part of 'meetup_bloc.dart';

@freezed
abstract class MeetupState with _$MeetupState{
  const factory MeetupState.inital() = MeetupStateInitial;
  const factory MeetupState.loading({ required String meetupId }) = MeetupStateLoading;
  const factory MeetupState.error() = MeetupStateError;
  const factory MeetupState.success({ required String meetupId }) = MeetupStateSuccess;

}
