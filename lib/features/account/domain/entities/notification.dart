import 'package:cloud_firestore/cloud_firestore.dart';

enum NotificationType {
  meetup_request,
  meetup_rejected,
  meetup_accepted,
  meetup_activated,
  payment_request,
  payment_request_accepted,
  payment_request_rejected,
  meetup_completed,
  meetup_deleted,
  meetup_edited,
  meetup_changes_accepted,
  meetup_changes_rejected,
  meetup_reminder,
}

class Notification {
  String id;
  NotificationType type;
  String title;
  String messageBody;
  bool read;
  DateTime date;

  Notification({
    required this.id,
    required this.type,
    required this.title,
    required this.messageBody,
    required this.read,
    required this.date
  });

  factory Notification.fromFirestore(QueryDocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Notification(
      id: doc.id,
      type: Notification.getNotificationTypeFromString(data['type']),
      title: data['title'],
      messageBody: data['body'],
      read: data['read'],
      date: (data['createdAt'] as Timestamp).toDate()
    );
  }

  static NotificationType getNotificationTypeFromString(String input) {
    switch (input) {
      case "meetup_request":
        return NotificationType.meetup_request;
      case "meetup_rejected":
        return NotificationType.meetup_rejected;
      case "meetup_accepted":
        return NotificationType.meetup_accepted;
      case "meetup_activated":
        return NotificationType.meetup_activated;
      case "payment_request":
        return NotificationType.payment_request;
      case "payment_request_accepted":
        return NotificationType.payment_request_accepted;
      case "payment_request_rejected":
        return NotificationType.payment_request_rejected;
      case "meetup_completed":
        return NotificationType.meetup_completed;
      case "meetup_deleted":
        return NotificationType.meetup_deleted;
      case "meetup_edited":
        return NotificationType.meetup_edited;
      case "meetup_changes_accepted":
        return NotificationType.meetup_changes_accepted;
      case "meetup_changes_rejected":
        return NotificationType.meetup_changes_rejected;
      case "meetup_reminder":
        return NotificationType.meetup_reminder;
      default:
        throw Error();
    }
  }
}
