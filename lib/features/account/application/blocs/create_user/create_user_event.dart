part of 'create_user_bloc.dart';

@freezed
abstract class CreateUserEvent with _$CreateUserEvent {
  const factory CreateUserEvent.fullNameChanged(String fullNameString) =
      FullNameChanged;
  const factory CreateUserEvent.usernameChanged(String usernameString) =
      UsernameChanged;
  const factory CreateUserEvent.profilePictureChanged(File file) =
      ProfilePictureChanged;
  const factory CreateUserEvent.submitCreateUser() = SubmitCreateUser;
}
