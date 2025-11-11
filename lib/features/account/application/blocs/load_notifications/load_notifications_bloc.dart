import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parentia/features/account/domain/entities/notification.dart';
import 'package:parentia/features/account/domain/repositories/user_repository.dart';

part 'load_notifications_event.dart';
part 'load_notifications_state.dart';

part 'load_notifications_bloc.freezed.dart';

class LoadNotificationsBloc
    extends Bloc<LoadNotificationsEvent, LoadNotificationsState> {
  UserRepository _userRepo;
  late StreamSubscription _subscription;

  LoadNotificationsBloc(this._userRepo)
    : super(LoadNotificationsState.initial()) {
    _subscription = _userRepo.notificationsStream.listen((notifications) {
      add(LoadNotificationsEvent.updateNotifications(notifications));
    });

    on<LoadNotifications>((event, emit) async {
      emit(LoadNotificationsState.loading());
      if (FirebaseAuth.instance.currentUser == null) {
        emit(LoadNotificationsState.initial());
        return;
      }

      String uid = FirebaseAuth.instance.currentUser!.uid;
      final result = await _userRepo.loadAllNotificationsByUserId(uid);
      emit(
        result.fold(
          (failure) =>
              LoadNotificationsState.error("Es ist etwas schief gelaufen"),
          (notifications) => LoadNotificationsState.success(
            notifications,
            _getNumberOfUnreadNotificationsFromList(notifications),
          ),
        ),
      );
    });

    on<UpdateNotifications>((event, emit) {
      emit(
        LoadNotificationsState.success(
          event.notifications,
          _getNumberOfUnreadNotificationsFromList(event.notifications),
        ),
      );
    });

    on<MarkNotificationsAsRead>((event, emit) async {
      if (state is! SuccessLoadNotificationsState) return;
      if ((state as SuccessLoadNotificationsState).numberOfUnreadNotifications == 0) return;
      final result = await _userRepo.markNotificationsAsRead(
        (state as SuccessLoadNotificationsState).notifications
            .where((n) => !n.read)
            .toList(),
      );

      result.fold((failure) {
      }, (_) {});
    });
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}

int _getNumberOfUnreadNotificationsFromList(List<Notification> notifications) {
  return notifications.where((n) => !n.read).length;
}
