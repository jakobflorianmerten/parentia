part of 'create_user_bloc.dart';

@freezed
abstract class CreateUserState with _$CreateUserState{
  const factory CreateUserState({
    required bool isSubmitting, 
    required FullName name, 
    required Username username, 
    required bool showErrorMessages,
    required Option<File> file, 
    required Option<Either<UserFailures, Unit>> failureOrSuccess,
  }) = _CreateUserState;

  factory CreateUserState.initial() => CreateUserState(
    failureOrSuccess: none(), 
    isSubmitting: false, 
    showErrorMessages: false, 
    name: FullName(''), 
    username: Username(''),
    file: none()
  );

}