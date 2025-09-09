part of 'load_notifications_bloc.dart';

@freezed
abstract class LoadNotificationsEvent with _$LoadNotificationsEvent{
  const factory LoadNotificationsEvent.loadNotifications() = LoadNotifications;
  const factory LoadNotificationsEvent.updateNotifications(List<Notification> notifications) = UpdateNotifications;
  const factory LoadNotificationsEvent.markNotificationsAsRead() = MarkNotificationsAsRead;
}
