part of 'load_notifications_bloc.dart';

@freezed
abstract class LoadNotificationsState with _$LoadNotificationsState {
  const factory LoadNotificationsState.initial() =
      InitialLoadNotificationsState;
  const factory LoadNotificationsState.loading() =
      LoadingLoadNotificationsState;
  const factory LoadNotificationsState.error(String message) =
      ErrorLoadNotificationsState;

  const factory LoadNotificationsState.success(
    List<Notification> notifications,
    int numberOfUnreadNotifications,
  ) = SuccessLoadNotificationsState;
}
