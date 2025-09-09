import 'package:cloud_firestore/cloud_firestore.dart';

enum NotificationType {
  transaction_request,
  transaction_rejected,
  transaction_accepted,
  transaction_activated,
  payment_request,
  payment_request_accepted,
  payment_request_rejected,
  transaction_completed,
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
      case "transaction_request":
        return NotificationType.transaction_request;
      case "transaction_rejected":
        return NotificationType.transaction_rejected;
      case "transaction_accepted":
        return NotificationType.transaction_accepted;
      case "transaction_activated":
        return NotificationType.transaction_activated;
      case "payment_request":
        return NotificationType.payment_request;
      case "payment_request_accepted":
        return NotificationType.payment_request_accepted;
      case "payment_request_rejected":
        return NotificationType.payment_request_rejected;
      case "transaction_completed":
        return NotificationType.transaction_completed;
      default:
        throw Error();
    }
  }
}
