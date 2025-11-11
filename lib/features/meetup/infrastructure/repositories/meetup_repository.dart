import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/services.dart';
import 'package:parentia/features/account/domain/entities/user.dart';
import 'package:parentia/features/account/infrastructure/repositories/user_repository.dart';
import 'package:parentia/features/meetup/domain/failures/meetup_failures.dart';
import 'package:parentia/features/meetup/domain/repositories/meetup_repository.dart';
import 'package:parentia/features/meetup/domain/entities/meetup.dart'
    as t;

class MeetupRepositoryImpl implements MeetupRepository {
  final _firestore = FirebaseFirestore.instance;
  final _auth = auth.FirebaseAuth.instance;

  @override
  Stream<List<t.Meetup>> get meetupHistoryStream =>
      getMeetupHistoryStream();

  @override
  Stream<List<t.Meetup>> get currentMeetups =>
      getCurrentMeetupsStream();

  Stream<List<t.Meetup>> getMeetupHistoryStream() {
    String uid = _auth.currentUser!.uid;
    return _firestore
        .collection('meetups')
        .where('participants', arrayContains: uid)
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => t.Meetup.fromFirestore(doc))
              .toList(),
        );
  }

  Stream<List<t.Meetup>> getCurrentMeetupsStream() {
    String uid = _auth.currentUser!.uid;
    return _firestore
        .collection('meetups')
        .where('participants', arrayContains: uid)
        .where('status', whereIn: ['pending', 'active', 'pending_changes'])
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => t.Meetup.fromFirestore(doc))
              .toList(),
        )
        .handleError((error) {
          print('Error in getCurrentMeetupsStream: $error');
        });
  }

  @override
  Future<Either<MeetupFailure, Unit>> acceptMeetup(
    String meetupId,
  ) async {
    try {
      await _firestore.collection('meetups').doc(meetupId).update({
        'status': 'active',
      });
      return right(unit);
    } on PlatformException catch (e) {
      print(e);
      return left(MeetupFailure.meetupServerError());
    } catch (e) {
      print(e);
      return left(MeetupFailure.meetupServerError());
    }
  }

  @override
  Future<Either<MeetupFailure, Unit>> addMeetup(
    String description,
    User participant,
    DateTime meetupDate,
  ) async {
    try {
      // Validate description length
      if (description.length < 10 || description.length > 1000) {
        return left(MeetupFailure.meetupServerError());
      }

      final currentUserId = _auth.currentUser!.uid;
      final User? currentUser = await UserRepositoryImpl.getCurrentUser();
      if (currentUser == null) throw Error();

      final data = {
        'initiatorId': currentUserId,
        'participantId': participant.id,
        'participants': [currentUserId, participant.id],
        'description': description,
        'status': 'pending',
        'meetupDate': meetupDate,
        'initiatorName': currentUser.fullName,
        'participantName': participant.fullName,
        'initiatorProfilePicture': currentUser.profilePicture,
        'participantProfilePicture': participant.profilePicture,
        'createdAt': FieldValue.serverTimestamp(),
      };

      await _firestore.collection('meetups').add(data);
      return right(unit);
    } on PlatformException catch (e) {
      print(e);
      return left(MeetupFailure.meetupServerError());
    }
  }

  @override
  Future<Either<MeetupFailure, Unit>> declineMeetup(
    String meetupId,
  ) async {
    try {
      await _firestore.collection('meetups').doc(meetupId).update({
        'status': 'rejected',
      });
      return right(unit);
    } on PlatformException catch (e) {
      print(e);
      return left(MeetupFailure.meetupServerError());
    } catch (e) {
      print(e);
      return left(MeetupFailure.meetupServerError());
    }
  }

  @override
  Future<Either<MeetupFailure, List<t.Meetup>>>
  getCurrentMeetupsByUserId(String uid) async {
    try {
      final results = await _firestore
          .collection('meetups')
          .where('participants', arrayContains: uid)
          .where('status', whereIn: ['pending', 'active', 'pending_changes'])
          .orderBy('createdAt', descending: true)
          .get();
      final meetups = results.docs.map((doc) {
        return t.Meetup.fromFirestore(doc);
      });
      return right(meetups.toList());
    } on PlatformException catch (e) {
      print(e);
      return left(MeetupFailure.meetupServerError());
    } catch (e) {
      print(e);
      return left(MeetupFailure.meetupServerError());
    }
  }

  @override
  Future<Either<MeetupFailure, List<t.Meetup>>>
  getMeetupHistory() async {
    final String uid = _auth.currentUser!.uid;
    try {
      final results = await _firestore
          .collection('meetups')
          .where('participants', arrayContains: uid)
          .orderBy('createdAt', descending: true)
          .get();
      final meetups = results.docs.map((doc) {
        return t.Meetup.fromFirestore(doc);
      });
      return right(meetups.toList());
    } on PlatformException catch (e) {
      print(e);
      return left(MeetupFailure.meetupServerError());
    } catch (e) {
      print(e);
      return left(MeetupFailure.meetupServerError());
    }
  }

  @override
  Future<Either<MeetupFailure, Unit>> payMeetup(
    String meetupId,
  ) async {
    try {
      await _firestore.collection('meetups').doc(meetupId).update({
        'status': 'completed',
      });
      return right(unit);
    } on PlatformException catch (e) {
      print(e);
      return left(MeetupFailure.meetupServerError());
    } catch (e) {
      print(e);
      return left(MeetupFailure.meetupServerError());
    }
  }

  @override
  Future<Either<MeetupFailure, Unit>> acceptPayment(
    String meetupId,
  ) async {
    try {
      await _firestore.collection('meetups').doc(meetupId).update({
        'status': 'completed',
      });
      return right(unit);
    } on PlatformException catch (e) {
      print(e);
      return left(MeetupFailure.meetupServerError());
    } catch (e) {
      print(e);
      return left(MeetupFailure.meetupServerError());
    }
  }

  @override
  Future<Either<MeetupFailure, Unit>> rejectPayment(
    String meetupId,
  ) async {
    try {
      await _firestore.collection('meetups').doc(meetupId).update({
        'status': 'active',
      });
      return right(unit);
    } on PlatformException catch (e) {
      print(e);
      return left(MeetupFailure.meetupServerError());
    } catch (e) {
      print(e);
      return left(MeetupFailure.meetupServerError());
    }
  }

  @override
  Future<Either<MeetupFailure, Unit>> deleteMeetupFromHistory(
    String meetupId,
  ) async {
    try {
      await _firestore.collection('meetups').doc(meetupId).delete();
      return right(unit);
    } on PlatformException catch (e) {
      print(e);
      return left(MeetupFailure.meetupServerError());
    } catch (e) {
      print(e);
      return left(MeetupFailure.meetupServerError());
    }
  }

  @override
  Future<Either<MeetupFailure, Unit>> deleteMeetup(
    String meetupId,
  ) async {
    try {
      await _firestore.collection('meetups').doc(meetupId).delete();
      return right(unit);
    } on PlatformException catch (e) {
      print(e);
      return left(MeetupFailure.meetupServerError());
    } catch (e) {
      print(e);
      return left(MeetupFailure.meetupServerError());
    }
  }

  @override
  Future<Either<MeetupFailure, Unit>> editMeetup(
    String meetupId,
    String newDescription,
    DateTime newMeetupDate,
  ) async {
    try {
      // Validate description length
      if (newDescription.length < 10 || newDescription.length > 1000) {
        return left(MeetupFailure.meetupServerError());
      }

      final currentUserId = _auth.currentUser!.uid;

      await _firestore.collection('meetups').doc(meetupId).update({
        'description': newDescription,
        'meetupDate': newMeetupDate,
        'status': 'pending_changes',
        'editedBy': currentUserId,
      });
      return right(unit);
    } on PlatformException catch (e) {
      print(e);
      return left(MeetupFailure.meetupServerError());
    } catch (e) {
      print(e);
      return left(MeetupFailure.meetupServerError());
    }
  }

  @override
  Future<Either<MeetupFailure, Unit>> acceptChanges(
    String meetupId,
  ) async {
    try {
      await _firestore.collection('meetups').doc(meetupId).update({
        'status': 'active',
        'editedBy': null,
      });
      return right(unit);
    } on PlatformException catch (e) {
      print(e);
      return left(MeetupFailure.meetupServerError());
    } catch (e) {
      print(e);
      return left(MeetupFailure.meetupServerError());
    }
  }

  @override
  Future<Either<MeetupFailure, Unit>> rejectChanges(
    String meetupId,
  ) async {
    try {
      // For rejecting changes, we need to fetch the original data
      // For simplicity, we'll just delete the meetup as discussed
      // Alternatively, you could store previous values and restore them
      await _firestore.collection('meetups').doc(meetupId).delete();
      return right(unit);
    } on PlatformException catch (e) {
      print(e);
      return left(MeetupFailure.meetupServerError());
    } catch (e) {
      print(e);
      return left(MeetupFailure.meetupServerError());
    }
  }
}
