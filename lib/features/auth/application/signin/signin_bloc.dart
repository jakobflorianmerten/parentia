import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parentia/core/push_notifications_helpers.dart';
import 'package:parentia/features/account/domain/repositories/user_repository.dart';
import 'package:parentia/features/auth/domain/auth_failure.dart';
import 'package:parentia/features/auth/domain/repositories/auth_repository.dart';
import 'package:parentia/features/auth/domain/value_objects/email.dart';
import 'package:parentia/features/auth/domain/value_objects/password.dart';

part 'signin_event.dart';
part 'signin_state.dart';

part 'signin_bloc.freezed.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  final IAuthRepository authRepository;
  final UserRepository userRepository;

  SigninBloc(this.authRepository, this.userRepository) : super(SigninState.initial()) {
    on<PasswordChanged>((event, emit) {
      emit(
        state.copyWith(
          password: Password(event.passwordStr),
          authFailureOrSuccessOption: none(),
        ),
      );
    });
    on<EmailChanged>((event, emit) {
      emit(
        state.copyWith(
          email: Email(event.emailStr),
          authFailureOrSuccessOption: none(),
        ),
      );
    });
    on<SigninRequested>((event, emit) async {
      emit(
        state.copyWith(isSubmitting: true, authFailureOrSuccessOption: none()),
      );
      final isEmailValid = state.email.isValid();
      final isPasswordValid = state.password.isValid();

      if (isEmailValid && isPasswordValid) {
        final failureOrSuccess = await authRepository
            .signInWithEmailAndPassword(
              email: state.email,
              password: state.password,
            );
        if (failureOrSuccess.isRight()) {
          await userRepository.updateUserLanguagePreference(getLanguageCode());
        }
        emit(
          state.copyWith(
            authFailureOrSuccessOption: some(failureOrSuccess),
            isSubmitting: false,
          ),
        );
      }
    });
  }
}
