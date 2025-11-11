part of 'meetup_history_bloc.dart';

@freezed
class MeetupHistoryState with _$MeetupHistoryState{
  const factory MeetupHistoryState.inital() = MeetupHistoryStateInital;
  const factory MeetupHistoryState.loading() = MeetupHistoryStateLoading;
  const factory MeetupHistoryState.success(List<Meetup> meetups) = MeetupHistoryStateSuccess;
  const factory MeetupHistoryState.error(String message) = MeetupHistoryStateError;
}
