import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parentia/core/presentation/animation/custom_loading_animation_element.dart';
import 'package:parentia/custom_toastmessages/message_service.dart';
import 'package:parentia/custom_toastmessages/overlay_widget.dart';
import 'package:parentia/features/account/application/blocs/load_notifications/load_notifications_bloc.dart';
import 'package:parentia/features/notification/presentation/widgets/notification_widget.dart';
import 'package:parentia/l10n/app_localizations.dart';

class NotificationsList extends StatelessWidget {
  const NotificationsList({super.key});

  @override
  Widget build(BuildContext context) {

    BlocProvider.of<LoadNotificationsBloc>(context).add(LoadNotificationsEvent.loadNotifications());

    return BlocConsumer<LoadNotificationsBloc, LoadNotificationsState>(
      listener: (context, state) {
        if (state is ErrorLoadNotificationsState) {
          MessageService.show(context, title: AppLocalizations.of(context)!.error_defaultMessageTitle, message: AppLocalizations.of(context)!.error_defaultMessageDescription, type: MessageType.error);
        }
      },
      builder: (context, state) {
        if (state is LoadingLoadNotificationsState) return Center(child: CustomLoadingAnimationElement());
        if (state is SuccessLoadNotificationsState) {
          return Expanded(
            child: ListView.builder(
              itemCount: state.notifications.length,
              itemBuilder:(context, index) {
                return NotificationWidget(notification: state.notifications[index]);
              },
            ),
          );
        }
        return Container();
      },
    );
  }
}
