import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parentia/features/account/domain/repositories/user_repository.dart';
import 'package:parentia/features/account/domain/user_failures.dart';
import 'package:parentia/features/account/domain/value_objects/full_name.dart';
import 'package:parentia/features/account/domain/value_objects/username.dart';
import 'package:parentia/features/auth/domain/repositories/auth_repository.dart';
import 'package:parentia/features/auth/domain/value_objects/email.dart';

part 'change_current_user_bloc.freezed.dart';

part 'change_current_user_event.dart';
part 'change_current_user_state.dart';

class ChangeCurrentUserBloc
    extends Bloc<ChangeCurrentUserEvent, ChangeCurrentUserState> {
  final UserRepository _userRepo;
  final IAuthRepository _authRepo;

  ChangeCurrentUserBloc(this._userRepo, this._authRepo)
    : super(ChangeCurrentUserState.initial()) {
    on<ChangeCurrentUserEventChangeName>((event, emit) {
      emit(
        state.copyWith(
          name: some(FullName(event.name)),
          isLoading: false,
          showValueErrors: false,
          failureOrSuccess: none(),
        ),
      );
    });
    on<ChangeCurrentUserEventChangeEmail>((event, emit) {
      emit(
        state.copyWith(
          email: some(Email(event.email)),
          isLoading: false,
          showValueErrors: false,
          failureOrSuccess: none(),
        ),
      );
    });
    on<ChangeCurrentUserEventChangeUsername>((event, emit) {
      emit(
        state.copyWith(
          username: some(Username(event.username)),
          isLoading: false,
          showValueErrors: false,
          failureOrSuccess: none(),
        ),
      );
    });
    on<ChangeCurrentUserEventChangeProfilePicture>((event, emit) {
      emit(
        state.copyWith(
          profilePicture: some(event.file),
          isLoading: false,
          showValueErrors: false,
          failureOrSuccess: none(),
        ),
      );
    });

    on<ChangeCurrentUserEventSaveChanges>((event, emit) async {
      if (state.email.isNone() &&
          state.name.isNone() &&
          state.username.isNone() &&
          state.profilePicture.isNone())
        return;
      emit(state.copyWith(isLoading: true, failureOrSuccess: none()));
      if (state.name.isSome() &&
          !state.name.getOrElse(() => throw Error).isValid()) {
        emit(state.copyWith(showValueErrors: true, isLoading: false));
        return;
      }
      if (state.username.isSome() &&
          !state.username.getOrElse(() => throw Error()).isValid()) {
        emit(state.copyWith(showValueErrors: true, isLoading: false));
      }
      if (state.email.isSome() &&
          !state.email.getOrElse(() => throw Error).isValid()) {
        emit(state.copyWith(showValueErrors: true, isLoading: false));
        return;
      }
      final uid = FirebaseAuth.instance.currentUser!.uid;
      String? fullName = null;
      String? username = null;
      File? profilePicture = null;
      String? email;
      // first update the email in auth and then in firestore database
      if (state.email.isSome()) {
        email = state.email.getOrElse(() => throw Error()).getOrCrash();
        final authResult = await _authRepo.changeEmail(
          state.email.getOrElse(() => throw Error()),
        );
        if (authResult.isLeft()) {
          emit(
            state.copyWith(
              failureOrSuccess: some(left(UserFailures.serverError())),
              isLoading: false,
            ),
          );
          return;
        }
      }
      if (state.name.isSome()) {
        fullName = state.name.getOrElse(() => throw Error()).getOrCrash();
      }
      if (state.username.isSome()) {
        username = state.username.getOrElse(() => throw Error()).getOrCrash();
      }
      if (state.profilePicture.isSome()) {
        profilePicture = state.profilePicture.getOrElse(() => throw Error());
      }
      final userResult = await _userRepo.updateUser(
        uid,
        fullName,
        profilePicture,
        email,
        username
      );
      emit(
        state.copyWith(
          failureOrSuccess: some(userResult),
          isLoading: false,
          showValueErrors: false,
          email: none(),
          name: none(),
          username: none(),
          profilePicture: none(),
        ),
      );
    });
  }
}
