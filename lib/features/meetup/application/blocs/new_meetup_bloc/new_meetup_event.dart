part of 'new_meetup_bloc.dart';

@freezed
abstract class NewMeetupEvent with _$NewMeetupEvent{
  const factory NewMeetupEvent.selectedMeetupPartner(User user) = SelectedMeetupPartner;
    const factory NewMeetupEvent.selectedDescription(String description) = SelectedDescription;
    const factory NewMeetupEvent.selectedMeetupDate(DateTime date) = SelectedMeetupDate;
    const factory NewMeetupEvent.submitMeetup() = SubmitMeetup;


}