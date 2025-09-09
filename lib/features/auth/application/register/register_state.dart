part of 'register_bloc.dart';


@freezed
abstract class RegisterState with _$RegisterState{
  const factory RegisterState({
    required Email email, 
    required Password password, 
    required bool showErrorMessages, 
    required bool isSubmitting, 
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _RegisterState;

  factory RegisterState.initial() => RegisterState(
    email: Email(''),
    password: Password(''),
    showErrorMessages: false,
    isSubmitting: false,
    authFailureOrSuccessOption: none(), 
  );

}
