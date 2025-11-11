part of 'load_meetups_bloc.dart';

@freezed
class LoadMeetupsEvent with _$LoadMeetupsEvent{
  const factory LoadMeetupsEvent.loadMeetups() = LoadMeetups;
  const factory LoadMeetupsEvent.updateMeetups(List<Meetup> meetups) = UpdateMeetups;
}
