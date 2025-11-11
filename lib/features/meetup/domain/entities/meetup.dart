import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

enum MeetupStatus {
  pending,
  active,
  rejected,
  completed,
  pendingChanges,
}

class Meetup {
  String id;
  bool isInitiator;
  String participantId;
  String initiatorId;
  String initiatorName;
  String participantName;
  String initiatorProfilePicture;
  String participantProfilePicture;
  String description;
  MeetupStatus status;
  DateTime meetupDate;
  String? editedBy;
  DateTime? createdAt;

  Meetup({
    required this.id,
    required this.isInitiator,
    required this.participantId,
    required this.initiatorId,
    required this.description,
    required this.status,
    required this.meetupDate,
    required this.initiatorName,
    required this.participantName,
    required this.participantProfilePicture,
    required this.initiatorProfilePicture,
    this.editedBy,
    this.createdAt,
  });

  factory Meetup.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    final String uid = FirebaseAuth.instance.currentUser!.uid;
    return Meetup(
      id: doc.id,
      isInitiator: data['initiatorId'] == uid ? true : false,
      participantId: data['participantId'],
      initiatorId: data['initiatorId'],
      description: data['description'],
      status: Meetup.getStatusFromString(data['status']),
      meetupDate: (data['meetupDate'] as Timestamp).toDate(),
      initiatorName: data['initiatorName'],
      initiatorProfilePicture: data['initiatorProfilePicture'],
      participantName: data['participantName'],
      participantProfilePicture: data['participantProfilePicture'],
      editedBy: data['editedBy'],
      createdAt: data['createdAt'] != null
          ? (data['createdAt'] as Timestamp).toDate()
          : null,
    );
  }

  static MeetupStatus getStatusFromString(String input) {
    switch (input) {
      case 'pending':
        return MeetupStatus.pending;
      case 'active':
        return MeetupStatus.active;
      case 'rejected':
        return MeetupStatus.rejected;
      case 'completed':
        return MeetupStatus.completed;
      case 'pending_changes':
        return MeetupStatus.pendingChanges;
      default:
        throw Exception('No valid Meetup status');
    }
  }
}
