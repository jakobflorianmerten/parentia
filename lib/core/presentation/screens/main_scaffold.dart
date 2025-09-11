import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:parentia/core/blocs/qr_code_user_bloc/qr_code_user_bloc.dart';
import 'package:parentia/core/get_it.dart';
import 'package:parentia/core/presentation/animation/custom_drawer.dart';
import 'package:parentia/core/presentation/animation/custom_loading_animation_element.dart';
import 'package:parentia/core/presentation/screens/qr_code_scanner.dart';
import 'package:parentia/core/presentation/widgets/bottom_navigation_bar.dart';
import 'package:parentia/core/push_notifications_helpers.dart';
import 'package:parentia/custom_toastmessages/message_service.dart';
import 'package:parentia/custom_toastmessages/overlay_widget.dart';
import 'package:parentia/features/account/application/blocs/current_user/current_user_bloc.dart';
import 'package:parentia/features/account/application/blocs/load_notifications/load_notifications_bloc.dart';
import 'package:parentia/features/account/infrastructure/repositories/user_repository.dart';
import 'package:parentia/features/notification/presentation/screens/notifications_screen.dart';
import 'package:parentia/features/transaction/application/blocs/transaction/transaction_bloc.dart';
import 'package:parentia/features/transaction/presentation/screens/modal_sheet.dart';
import 'package:provider/provider.dart';

class MainNavigationScaffold extends StatefulWidget {
  final Widget child;
  const MainNavigationScaffold({super.key, required this.child});

  @override
  State<MainNavigationScaffold> createState() => _MainNavigationScaffoldState();
}

class _MainNavigationScaffoldState extends State<MainNavigationScaffold>
    with WidgetsBindingObserver {
  final NotificationService _notificationService = NotificationService();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _notificationService.checkPermissionOnAppResume();
    }
  }

  // @override
  // void didChangeLocales(List<Locale>? locales) {
  //   super.didChangeLocales(locales);
  //   if (locales != null && locales.isNotEmpty) {
  //     final languageCode = locales.first.languageCode;

  //     locator<UserRepositoryImpl>().updateUserLanguagePreference(languageCode);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();

    if (location.startsWith('/more/transaction-history') ||
        location.startsWith('/more/account')) {
      return widget.child;
    }

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => locator<TransactionBloc>(),
        ),
        BlocProvider(
          create: (context) => locator<QrCodeUserBloc>(),
        ),
        BlocProvider(
          create: (context) => locator<LoadNotificationsBloc>(),
        ),
      ],
      child: BlocConsumer<CurrentUserBloc, CurrentUserState>(
        listener: (context, state) {
          if (state is CurrentUserStateNotAuthenticated) {
            GoRouter.of(context).go('/initial');
          }
        },
        builder: (context, state) {
          if (state is CurrentUserStateAuthenticateWithAccount) {
            _notificationService.requestPermission();
            return ChangeNotifierProvider(
              create: (_) => DrawerControllerModel(),
              child: CustomAnimationDrawer(
                drawer: NotificationsScreen(),
                child: Scaffold(
                  body: Stack(
                    children: [
                      widget.child,
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: CustomBottomNavigationBar(),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
