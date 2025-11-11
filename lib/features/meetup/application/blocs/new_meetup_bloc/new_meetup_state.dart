part of 'new_meetup_bloc.dart';

@freezed
abstract class NewMeetupState with _$NewMeetupState {
  const factory NewMeetupState({
    required bool isSubmitting,
    required Option<User> selectedUser,
    required String description,
    required DateTime meetupDate,
    required Option<Either<MeetupFailure, Unit>> failureOrSuccess,
  }) = _NewMeetupState;

  factory NewMeetupState.initial() => NewMeetupState(
    selectedUser: none(),
    description: '',
    meetupDate: DateTime.now(),
    failureOrSuccess: none(),
    isSubmitting: false
  );
}
