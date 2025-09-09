part of 'change_current_user_bloc.dart';

@freezed
abstract class ChangeCurrentUserState with _$ChangeCurrentUserState {
  const factory ChangeCurrentUserState({
    required bool isLoading,
    required bool showValueErrors,
    required Option<FullName> name,
    required Option<Username> username,
    required Option<Email> email,
    required Option<File> profilePicture,
    required Option<Either<UserFailures, Unit>> failureOrSuccess,
  }) = _ChangeCurrentUserState;

  factory ChangeCurrentUserState.initial() => ChangeCurrentUserState(
    isLoading: false,
    showValueErrors: false,
    name: none(),
    email: none(),
    username: none(),
    failureOrSuccess: none(),
    profilePicture: none(),
  );
}
