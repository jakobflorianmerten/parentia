

import 'package:dartz/dartz.dart';
import 'package:parentia/features/account/domain/entities/user.dart';
import 'package:parentia/features/meetup/domain/entities/meetup.dart';
import 'package:parentia/features/meetup/domain/failures/meetup_failures.dart';

abstract class MeetupRepository {
  Future<Either<MeetupFailure, Unit>> addMeetup(String description, User participant, DateTime meetupDate);
  Future<Either<MeetupFailure, Unit>> acceptMeetup(String meetupId);
  Future<Either<MeetupFailure, Unit>> declineMeetup(String meetupId);
  Future<Either<MeetupFailure, Unit>> payMeetup(String meetupId);
  Future<Either<MeetupFailure, Unit>> acceptPayment(String meetupId);
  Future<Either<MeetupFailure, Unit>> rejectPayment(String meetupId);
  Future<Either<MeetupFailure, List<Meetup>>> getCurrentMeetupsByUserId(String uid);
  Future<Either<MeetupFailure, List<Meetup>>> getMeetupHistory();
  Future<Either<MeetupFailure, Unit>> deleteMeetupFromHistory(String meetupId);
  Future<Either<MeetupFailure, Unit>> deleteMeetup(String meetupId);
  Future<Either<MeetupFailure, Unit>> editMeetup(String meetupId, String newDescription, DateTime newMeetupDate);
  Future<Either<MeetupFailure, Unit>> acceptChanges(String meetupId);
  Future<Either<MeetupFailure, Unit>> rejectChanges(String meetupId);

  Stream<List<Meetup>> get currentMeetups;
  Stream<List<Meetup>> get meetupHistoryStream;
}