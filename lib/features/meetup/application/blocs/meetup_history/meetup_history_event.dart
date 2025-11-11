part of 'meetup_history_bloc.dart';

@freezed
class MeetupHistoryEvent with _$MeetupHistoryEvent{
  const factory MeetupHistoryEvent.load() = MeetupHistoryEventLoad;
  const factory MeetupHistoryEvent.updated(List<Meetup> meetups) = MeetupHistoryEventUpdated;
  const factory MeetupHistoryEvent.deleteMeetup(String meetupId) = MeetupHistoryEventDeleteMeetup;
}
