part of 'forgot_password_bloc.dart';

@freezed
abstract class ForgotPasswordState with _$ForgotPasswordState{

  const factory ForgotPasswordState({
    required Email email, 
    required bool isLoading, 
    required Option<Either<AuthFailure, Unit>> failureOrSuccess, 
  }) = _ForgotPasswordState;

  factory ForgotPasswordState.initial() => ForgotPasswordState(
    email: Email(''),
    isLoading: false, 
    failureOrSuccess: none()
  );

}
