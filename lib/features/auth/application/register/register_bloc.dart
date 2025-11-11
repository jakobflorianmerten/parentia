import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parentia/features/auth/domain/auth_failure.dart';
import 'package:parentia/features/auth/domain/repositories/auth_repository.dart';
import 'package:parentia/features/auth/domain/value_objects/email.dart';
import 'package:parentia/features/auth/domain/value_objects/password.dart';

part 'register_event.dart';
part 'register_state.dart';

part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final IAuthRepository authRepository;

  RegisterBloc(this.authRepository) : super(RegisterState.initial()) {
    on<EmailChanged>((event, emit) {
      Email email = Email(event.email);
      if (email.isValid()) {
        emit(
          state.copyWith(
            authFailureOrSuccessOption: none(),
            email: email,
            showErrorMessages: false,
          ),
        );
      } else {
        emit(
          state.copyWith(
            authFailureOrSuccessOption: none(),

            email: email,
          ),
        );
      }
    });

    on<PasswordChanged>((event, emit) {
      Password password = Password(event.password);
      if (password.isValid()) {
        emit(
          state.copyWith(
            authFailureOrSuccessOption: none(),
            password: password,
            showErrorMessages: false,
          ),
        );
      } else {
        emit(
          state.copyWith(
            authFailureOrSuccessOption: none(),

            password: password,
          ),
        );
      }
    });

    on<SignUpRequested>((event, emit) async {
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
          showErrorMessages: false,
        ),
      );

      final isEmailValid = state.email.isValid();
      final isPasswordValid = state.password.isValid();

      if (isEmailValid && isPasswordValid) {
        final failureOrSuccess = await authRepository
            .registerWithEmailAndPassword(
              email: state.email,
              password: state.password,
            );
        emit(
          state.copyWith(
            authFailureOrSuccessOption: some(failureOrSuccess),
            isSubmitting: false,
            showErrorMessages: false,
          ),
        );
      } else {
        emit(state.copyWith(isSubmitting: false, showErrorMessages: true));
      }
    });
  }
}
