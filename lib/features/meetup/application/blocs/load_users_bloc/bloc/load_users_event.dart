part of 'load_users_bloc.dart';

@freezed
class LoadUsersEvent with _$LoadUsersEvent{
  const factory LoadUsersEvent.loadUsers() = LoadUsers;
  const factory LoadUsersEvent.textSearchUsers(String input) = TextSearchUsers;
}