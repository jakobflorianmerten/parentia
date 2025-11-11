part of 'meetup_bloc.dart';

@freezed
abstract class MeetupEvent with _$MeetupEvent{
  const factory MeetupEvent.acceptMeetup(String meetupId) = AcceptMeetup;
  const factory MeetupEvent.rejectMeetup(String meetupId) = RejectMeetup;
  const factory MeetupEvent.payMeetup(String meetupId) = PayMeetup;
  const factory MeetupEvent.acceptPayment(String meetupId) = AcceptPayment;
  const factory MeetupEvent.rejectPayment(String meetupId) = RejectPayment;
  const factory MeetupEvent.deleteMeetup(String meetupId) = DeleteMeetup;
  const factory MeetupEvent.editMeetup(String meetupId, String newDescription, DateTime newMeetupDate) = EditMeetup;
  const factory MeetupEvent.acceptChanges(String meetupId) = AcceptChanges;
  const factory MeetupEvent.rejectChanges(String meetupId) = RejectChanges;
}
