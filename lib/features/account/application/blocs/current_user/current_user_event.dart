part of 'current_user_bloc.dart';

@freezed
class CurrentUserEvent with _$CurrentUserEvent{
  const factory CurrentUserEvent.checkCurrentUser() = CheckCurrentUser;
  const factory CurrentUserEvent.initializeCurrentUser() = InitializeCurrentUser;
  const factory CurrentUserEvent.signOutCurrentUser() = SignOutCurrentUser;
  const factory CurrentUserEvent.currentUserUpdate(User user) = CurrentUserUpdate;
}
