import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parentia/features/auth/domain/auth_failure.dart';
import 'package:parentia/features/auth/domain/repositories/auth_repository.dart';

part 'delete_user_event.dart';
part 'delete_user_state.dart';

part 'delete_user_bloc.freezed.dart';

class DeleteUserBloc extends Bloc<DeleteUserEvent, DeleteUserState> {
  IAuthRepository _auth;
  DeleteUserBloc(this._auth) : super(DeleteUserState.initial()) {
    on<DeleteUser>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          failureOrSuccess: none(),
          needToReauthenticate: false,
        ),
      );
      final result = await _auth.deleteAccount();
      result.fold(
        (failure) {
          if (failure is DeleteUserButNeedToReauthenticate) {
            emit(
              state.copyWith(
                isLoading: false,
                needToReauthenticate: true,
                failureOrSuccess: none(),
              ),
            );
          } else {
            emit(
              state.copyWith(
                isLoading: false,
                needToReauthenticate: false,
                failureOrSuccess: some(result),
              ),
            );
          }
        },
        (_) {
          emit(
            state.copyWith(
              isLoading: false,
              needToReauthenticate: false,
              failureOrSuccess: some(result),
            ),
          );
        },
      );
    });
  }
}
