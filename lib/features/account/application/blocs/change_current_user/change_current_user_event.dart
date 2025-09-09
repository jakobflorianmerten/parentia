part of 'change_current_user_bloc.dart';

@freezed
class ChangeCurrentUserEvent with _$ChangeCurrentUserEvent{
  const factory ChangeCurrentUserEvent.changeName(String name) = ChangeCurrentUserEventChangeName;
  const factory ChangeCurrentUserEvent.changeEmail(String email) = ChangeCurrentUserEventChangeEmail;
  const factory ChangeCurrentUserEvent.changeUsername(String username) = ChangeCurrentUserEventChangeUsername;
  const factory ChangeCurrentUserEvent.changeProfilePicture(File file) = ChangeCurrentUserEventChangeProfilePicture;
  const factory ChangeCurrentUserEvent.saveChanges() = ChangeCurrentUserEventSaveChanges;
}