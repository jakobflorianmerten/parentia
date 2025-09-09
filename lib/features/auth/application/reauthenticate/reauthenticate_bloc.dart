import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parentia/features/account/domain/user_failures.dart';
import 'package:parentia/features/auth/domain/auth_failure.dart';
import 'package:parentia/features/auth/domain/repositories/auth_repository.dart';
import 'package:parentia/features/auth/domain/value_objects/email.dart';
import 'package:parentia/features/auth/domain/value_objects/password.dart';

part 'reauthenticate_event.dart';
part 'reauthenticate_state.dart';

part 'reauthenticate_bloc.freezed.dart';



class ReauthenticateBloc extends Bloc<ReauthenticateEvent, ReauthenticateState> {
  final IAuthRepository _auth;
  ReauthenticateBloc(this._auth) : super(ReauthenticateState.initial()) {
    on<ReauthenticateEventPasswordUpdated>((event, emit) {
      emit(state.copyWith(password: Password(event.password), failureOrSuccess: none()));
    });
    on<ReauthenticateEventEmailUpdated>((event, emit) {
      emit(state.copyWith(email: Email(event.email), failureOrSuccess: none()));
    });
    on<ReauthenticateEventSave>((event, emit) async {
      emit(state.copyWith(isLoading: true, showErrorMessages: false));
      if (!state.email.isValid() || !state.password.isValid()) {
        emit(state.copyWith(isLoading: false, showErrorMessages: true));
        return;
      }
      final result = await _auth.reauthenticateUserWithCredential(state.email, state.password);
      emit(state.copyWith(failureOrSuccess: some(result), isLoading: false, showErrorMessages: false));
    });
  }
}
