part of 'signin_bloc.dart';

@freezed
abstract class SigninEvent with _$SigninEvent{

  const factory SigninEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SigninEvent.passwordChanged(String passwordStr) = PasswordChanged;
  const factory SigninEvent.signInRequested() = SigninRequested;



}