import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parentia/features/account/domain/repositories/user_repository.dart';
import 'package:parentia/features/account/domain/user_failures.dart';
import 'package:parentia/features/account/domain/value_objects/full_name.dart';
import 'package:parentia/features/account/domain/value_objects/username.dart';

part 'create_user_event.dart';
part 'create_user_state.dart';

part 'create_user_bloc.freezed.dart';

class CreateUserBloc extends Bloc<CreateUserEvent, CreateUserState> {

  UserRepository _repo;

  CreateUserBloc(this._repo) : super(CreateUserState.initial()) {
    on<FullNameChanged>((event, emit) {
      emit(state.copyWith(name: FullName(event.fullNameString), failureOrSuccess: none()));
    });
    on<UsernameChanged>((event, emit) {
      emit(state.copyWith(username: Username(event.usernameString), failureOrSuccess: none()));
    });
    on<ProfilePictureChanged>((event, emit) {
      emit(state.copyWith(file: some(event.file), failureOrSuccess: none()));
    });
    on<SubmitCreateUser>((event, emit) async {
      emit(state.copyWith(isSubmitting: true));
      if (!state.name.isValid() || !state.username.isValid()) {
        emit(state.copyWith(showErrorMessages: true, isSubmitting: false, failureOrSuccess: none()));
      }
      final Either<UserFailures, Unit> result =  await _repo.createUser(state.file, state.name.getOrCrash(), state.username.getOrCrash());
      emit(state.copyWith(failureOrSuccess: some(result), isSubmitting: false, showErrorMessages: false));
    });
  }
}
