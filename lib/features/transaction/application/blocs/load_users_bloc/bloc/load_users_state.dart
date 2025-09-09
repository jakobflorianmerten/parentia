part of 'load_users_bloc.dart';

@freezed
abstract class LoadUsersState with _$LoadUsersState{
  const factory LoadUsersState({
    required bool isLoading, 
    required Option<Either<UserFailures, List<User>>> failureOrSuccess
  }) = _LoadUsersState;

  factory LoadUsersState.initial() => LoadUsersState(isLoading: false, failureOrSuccess: none());
}
