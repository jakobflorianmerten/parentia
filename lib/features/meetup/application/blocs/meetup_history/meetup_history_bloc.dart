import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parentia/features/meetup/domain/entities/meetup.dart';
import 'package:parentia/features/meetup/domain/repositories/meetup_repository.dart';

part 'meetup_history_event.dart';
part 'meetup_history_state.dart';

part 'meetup_history_bloc.freezed.dart';

class MeetupHistoryBloc extends Bloc<MeetupHistoryEvent, MeetupHistoryState> {

  MeetupRepository _repo;
  late StreamSubscription _subscription;

  MeetupHistoryBloc(this._repo) : super(MeetupHistoryState.inital()) {

    _subscription = _repo.meetupHistoryStream.listen((meetups) {
      add(MeetupHistoryEvent.updated(meetups));
    });

    on<MeetupHistoryEventLoad>((event, emit) async {
      emit(MeetupHistoryState.loading());
      final result = await _repo.getMeetupHistory();
      result.fold((failure) {
        emit(MeetupHistoryState.error("Es ist etwas schie gelaufen"));
      }, (meetups) {
        emit(MeetupHistoryState.success(meetups));
      });
    });

    on<MeetupHistoryEventUpdated>((event, emit) {
      emit(MeetupHistoryState.success(event.meetups));
    });

    on<MeetupHistoryEventDeleteMeetup>((event, emit) async {
      emit(MeetupHistoryState.loading());
      final result = await _repo.deleteMeetupFromHistory(event.meetupId);
      result.fold((failure) {
        emit(MeetupHistoryState.error("Es ist etwas schief gelaufen"));
      }, (_) {

      });

    });

  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
