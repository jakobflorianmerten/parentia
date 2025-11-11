import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:parentia/features/account/domain/entities/user.dart';
import 'package:parentia/features/account/domain/repositories/user_repository.dart';
import 'package:parentia/features/account/domain/user_failures.dart';
import 'package:parentia/features/auth/domain/entities/auth_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parentia/features/auth/domain/repositories/auth_repository.dart';

part 'current_user_event.dart';
part 'current_user_state.dart';

part 'current_user_bloc.freezed.dart';

class CurrentUserBloc extends Bloc<CurrentUserEvent, CurrentUserState> {
  IAuthRepository _authRepo;
  UserRepository _userRepo;
  late StreamSubscription _subscription;

  CurrentUserBloc(this._authRepo, this._userRepo)
    : super(CurrentUserState.initial()) {
      _subscription = _userRepo.currentUserStream.listen(
        (user) {
          add(CurrentUserEvent.currentUserUpdate(user));
        },
        onDone: () {},
        onError: (error) {
        },
      );

    on<CheckCurrentUser>((event, emit) async {
      final authResult = await _authRepo.getSignedInUser();

      if (authResult.isNone()) {
        emit(CurrentUserState.notAuthenticated());
        return;
      }

      final AuthObject authObject = authResult.getOrElse(() => throw Error());

      final userResult = await _userRepo.loadUserById(authObject.uid);
      userResult.fold(
        (failure) {
          if (failure is UserNotFound) {
            emit(CurrentUserState.authenticatedNoUserAccount(authObject));
          }
        },
        (user) {
          emit(CurrentUserState.authenticatedWithUserAccount(user));
        },
      );
    });
    on<SignOutCurrentUser>((event, emit) async {
      if (state is CurrentUserStateAuthenticateWithAccount) {
        await _userRepo.deleteNotificationTokenFromCurrentLoggedInUser(
          (state as CurrentUserStateAuthenticateWithAccount).user.id,
        );
        await _authRepo.signOut();
        emit(CurrentUserState.notAuthenticated());
      }
    });
    on<CurrentUserUpdate>((event, emit) {
      emit(CurrentUserState.authenticatedWithUserAccount(event.user));
    });
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
