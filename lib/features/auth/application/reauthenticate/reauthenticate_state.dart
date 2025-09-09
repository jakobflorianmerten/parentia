part of 'reauthenticate_bloc.dart';

@freezed
abstract class ReauthenticateState with _$ReauthenticateState {
  const factory ReauthenticateState({
    required bool isLoading,
    required bool showErrorMessages,
    required Password password,
    required Email email,
    required Option<Either<AuthFailure, Unit>> failureOrSuccess,
  }) = _ReauthenticateState;

  factory ReauthenticateState.initial() => ReauthenticateState(
    isLoading: false,
    showErrorMessages: false,
    password: Password(''),
    email: Email(''), 
    failureOrSuccess: none(),
  );
}
