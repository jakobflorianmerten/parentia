import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parentia/features/meetup/domain/repositories/meetup_repository.dart';

part 'meetup_event.dart';
part 'meetup_state.dart';

part 'meetup_bloc.freezed.dart';

class MeetupBloc extends Bloc<MeetupEvent, MeetupState> {
  MeetupRepository _repo;

  MeetupBloc(this._repo) : super(MeetupState.inital()) {
    on<AcceptMeetup>((event, emit) async {
      emit(MeetupState.loading(meetupId: event.meetupId));

      final result = await _repo.acceptMeetup(event.meetupId);
      result.fold(
        (failure) {
          emit(
            MeetupState.error(),
          );
        },
        (success) {
          emit(MeetupState.success(meetupId: event.meetupId));
        },
      );
    });
    on<RejectMeetup>((event, emit) async {
      emit(MeetupState.loading(meetupId: event.meetupId));

      final result = await _repo.declineMeetup(event.meetupId);
      result.fold(
        (failure) {
          emit(MeetupState.error());
        },
        (success) {
          emit(MeetupState.success(meetupId: event.meetupId));
        },
      );
    });

    on<PayMeetup>((event, emit) async {
      emit(MeetupState.loading(meetupId: event.meetupId));
      final result = await _repo.payMeetup(event.meetupId);
      result.fold(
        (failure) {
          emit(MeetupState.error());
        },
        (success) {
          emit(MeetupState.success(meetupId: event.meetupId));
        },
      );
    });

    on<AcceptPayment>((event, emit) async {
      emit(MeetupState.loading(meetupId: event.meetupId));
      final result = await _repo.acceptPayment(event.meetupId);
      result.fold(
        (failure) {
          emit(MeetupState.error());
        },
        (success) {
          emit(MeetupState.success(meetupId: event.meetupId));
        },
      );
    });

    on<RejectPayment>((event, emit) async {
      emit(MeetupState.loading(meetupId: event.meetupId));
      final result = await _repo.rejectPayment(event.meetupId);
      result.fold(
        (failure) {
          emit(
            MeetupState.error(),
          );
        },
        (success) {
          emit(MeetupState.success(meetupId: event.meetupId));
        },
      );
    });

    on<DeleteMeetup>((event, emit) async {
      emit(MeetupState.loading(meetupId: event.meetupId));
      final result = await _repo.deleteMeetup(event.meetupId);
      result.fold(
        (failure) {
          emit(MeetupState.error());
        },
        (success) {
          emit(MeetupState.success(meetupId: event.meetupId));
        },
      );
    });

    on<EditMeetup>((event, emit) async {
      emit(MeetupState.loading(meetupId: event.meetupId));
      final result = await _repo.editMeetup(
        event.meetupId,
        event.newDescription,
        event.newMeetupDate,
      );
      result.fold(
        (failure) {
          emit(MeetupState.error());
        },
        (success) {
          emit(MeetupState.success(meetupId: event.meetupId));
        },
      );
    });

    on<AcceptChanges>((event, emit) async {
      emit(MeetupState.loading(meetupId: event.meetupId));
      final result = await _repo.acceptChanges(event.meetupId);
      result.fold(
        (failure) {
          emit(MeetupState.error());
        },
        (success) {
          emit(MeetupState.success(meetupId: event.meetupId));
        },
      );
    });

    on<RejectChanges>((event, emit) async {
      emit(MeetupState.loading(meetupId: event.meetupId));
      final result = await _repo.rejectChanges(event.meetupId);
      result.fold(
        (failure) {
          emit(MeetupState.error());
        },
        (success) {
          emit(MeetupState.success(meetupId: event.meetupId));
        },
      );
    });
  }
}
