import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:parentia/features/account/domain/entities/user.dart';
import 'package:parentia/features/account/domain/repositories/user_repository.dart';
import 'package:parentia/features/account/domain/user_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'load_users_event.dart';
part 'load_users_state.dart';

part 'load_users_bloc.freezed.dart';

class LoadUsersBloc extends Bloc<LoadUsersEvent, LoadUsersState> {
  UserRepository _userRepo;

  LoadUsersBloc(this._userRepo) : super(LoadUsersState.initial()) {
    on<LoadUsers>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await _userRepo.loadAllUsers();
      emit(state.copyWith(failureOrSuccess: some(result), isLoading: false));
    });
    on<TextSearchUsers>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await _userRepo.searchUsersByUsernameOrName(event.input);
      emit(state.copyWith(failureOrSuccess: some(result), isLoading: false));
    });
  }
}
