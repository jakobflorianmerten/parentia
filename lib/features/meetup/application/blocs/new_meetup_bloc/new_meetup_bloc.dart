import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parentia/features/account/domain/entities/user.dart';
import 'package:parentia/features/meetup/domain/failures/meetup_failures.dart';
import 'package:parentia/features/meetup/domain/repositories/meetup_repository.dart';


part 'new_meetup_event.dart';
part 'new_meetup_state.dart';

part 'new_meetup_bloc.freezed.dart';

class NewMeetupBloc extends Bloc<NewMeetupEvent, NewMeetupState> {
  MeetupRepository _repo;
  NewMeetupBloc(this._repo) : super(NewMeetupState.initial()) {
    on<SelectedMeetupPartner>((event, emit) {
      emit(state.copyWith(selectedUser: some(event.user), failureOrSuccess: none()));
    });

    on<SelectedDescription>((event, emit) {
      emit(state.copyWith(description: event.description, failureOrSuccess: none()));
    });

    on<SelectedMeetupDate>((event, emit) {
      emit(state.copyWith(meetupDate: event.date, failureOrSuccess: none()));
    });

    on<SubmitMeetup>((event, emit) async {
      emit(state.copyWith(isSubmitting: true, failureOrSuccess: none()));
      // Validate description length (10-1000 characters) and selectedUser
      if (state.description.length < 10 || state.description.length > 1000 || state.selectedUser.isNone()) {
        emit(state.copyWith(failureOrSuccess: some(left(MeetupFailure.valueError())), isSubmitting: false));
        return;
      }
      final result = await _repo.addMeetup(state.description, state.selectedUser.getOrElse(() => throw Error()), state.meetupDate);
      emit(state.copyWith(failureOrSuccess: some(result), isSubmitting: false));
    });
  }
}
