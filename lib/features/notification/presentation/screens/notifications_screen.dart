import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parentia/core/presentation/animation/custom_drawer.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/features/account/application/blocs/load_notifications/load_notifications_bloc.dart';
import 'package:parentia/features/notification/presentation/widgets/notifications_list.dart';
import 'package:parentia/l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  Timer? _timer;
  bool _eventFired = false;
  late DrawerControllerModel _provider;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
      _provider = Provider.of<DrawerControllerModel>(context, listen: false); // Initialisierung hinzufügen
    _provider.addListener(_onDrawerChanged);
  }

  void _onDrawerChanged() {
    final drawerController = Provider.of<DrawerControllerModel>(context, listen: false);
    if (drawerController.isOpen && !_eventFired) {
      _timer?.cancel();
      _timer = Timer(const Duration(milliseconds: 500), () {
        if (drawerController.isOpen && !_eventFired) {
          BlocProvider.of<LoadNotificationsBloc>(context).add(LoadNotificationsEvent.markNotificationsAsRead());
          _eventFired = true;
        }
      });
    } else if (!drawerController.isOpen) {
      _timer?.cancel();
      _eventFired = false;
    }
  }

  @override
  void dispose() {
    _provider.removeListener(_onDrawerChanged);
    _timer?.cancel();
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomClickedElement(
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 16,
                    ),
                    addHorizontalSpace(10),
                    Text(
                      AppLocalizations.of(context)!.back,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                onPressed: () {
                  context.read<DrawerControllerModel>().toggle();
                },
              ),
              addVerticalSpace(30),
              Text(
                AppLocalizations.of(context)!.notifications,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              addVerticalSpace(20),
              NotificationsList()
            ],
          ),
        ),
      ),
    );
  }
}
