part of 'current_user_bloc.dart';

@freezed
class CurrentUserState with _$CurrentUserState{
  const factory CurrentUserState.initial() = CurrentUserStateInitial;
  const factory CurrentUserState.notAuthenticated() = CurrentUserStateNotAuthenticated;
  const factory CurrentUserState.authenticatedNoUserAccount(AuthObject authObject) = CurrentUserStateAuthenticateNoAccount;
  const factory CurrentUserState.authenticatedWithUserAccount(User user) = CurrentUserStateAuthenticateWithAccount;
}
