part of 'register_bloc.dart';

@freezed
abstract class RegisterEvent with _$RegisterEvent{
    const factory RegisterEvent.passwordChanged(String password) = PasswordChanged;
  const factory RegisterEvent.emailChanged(String email) = EmailChanged;

    const factory RegisterEvent.signUpRequested() = SignUpRequested;



}