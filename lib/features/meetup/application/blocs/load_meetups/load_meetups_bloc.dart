import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parentia/features/meetup/domain/entities/meetup.dart';
import 'package:parentia/features/meetup/domain/repositories/meetup_repository.dart';

part 'load_meetups_event.dart';
part 'load_meetups_state.dart';

part 'load_meetups_bloc.freezed.dart';

class LoadMeetupsBloc
    extends Bloc<LoadMeetupsEvent, LoadMeetupsState> {
  MeetupRepository _repo;
  late StreamSubscription _subscription;

  LoadMeetupsBloc(this._repo) : super(LoadMeetupsState.initial()) {
    _subscription = _repo.currentMeetups.listen((meetups) {
      add(LoadMeetupsEvent.updateMeetups(meetups));
    });

    on<LoadMeetups>((event, emit) async {
      emit(LoadMeetupsState.loading());
      String currentUid = FirebaseAuth.instance.currentUser!.uid;
      final result = await _repo.getCurrentMeetupsByUserId(currentUid);

      result.fold((failure) {}, (meetups) {
        List<Meetup> activeMeetups = meetups
            .where((element) => element.status == MeetupStatus.active)
            .toList();
        List<Meetup> notActiveMeetups = meetups
            .where((element) =>
                element.status == MeetupStatus.pending ||
                element.status == MeetupStatus.pendingChanges)
            .toList();

        emit(
          LoadMeetupsState.success(
            activeMeetups,
            notActiveMeetups,
          ),
        );
      });
    });

    on<UpdateMeetups>((event, emit) {
      List<Meetup> activeMeetups = event.meetups
          .where((element) => element.status == MeetupStatus.active)
          .toList();
      List<Meetup> notActiveMeetups = event.meetups
          .where((element) =>
              element.status == MeetupStatus.pending ||
              element.status == MeetupStatus.pendingChanges)
          .toList();
      emit(
        LoadMeetupsState.success(
          activeMeetups,
          notActiveMeetups,
        ),
      );
    });
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
