part of 'delete_user_bloc.dart';

@freezed
abstract class DeleteUserState with _$DeleteUserState {
  const factory DeleteUserState({
    required Option<Either<AuthFailure, Unit>> failureOrSuccess,
    required bool isLoading,
    required bool needToReauthenticate
  }) = _DeleteUserState;

  factory DeleteUserState.initial() => DeleteUserState(
    failureOrSuccess: none(),
    isLoading: false,
    needToReauthenticate: false, 
  );
}
