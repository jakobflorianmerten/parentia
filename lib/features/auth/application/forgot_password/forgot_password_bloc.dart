import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parentia/features/auth/domain/auth_failure.dart';
import 'package:parentia/features/auth/domain/repositories/auth_repository.dart';
import 'package:parentia/features/auth/domain/value_objects/email.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';

part 'forgot_password_bloc.freezed.dart';

class ForgotPasswordBloc extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {

  IAuthRepository _authRepository;

  ForgotPasswordBloc(this._authRepository) : super(ForgotPasswordState.initial()) {
    on<ForgotPasswordEmailChanged>((event, emit) {
      emit(state.copyWith(email: Email(event.email), failureOrSuccess: none()));
    });

    on<ForgotPasswordSubmit>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      if (!state.email.isValid()) {
        return;
      }
      final result = await _authRepository.sendForgotPasswordMail(state.email);
      emit(state.copyWith(isLoading: false, failureOrSuccess: some(result)));
    },);

  }
}
