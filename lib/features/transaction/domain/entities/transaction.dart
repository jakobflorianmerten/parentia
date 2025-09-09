import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:parentia/features/transaction/domain/value_objects/money.dart';

enum TransactionStatus {
  pending,
  active,
  rejected,
  payment_pending,
  payment_accepted,
}

class Transaction {
  String id;
  bool isCreditor;
  String debtorId;
  String creditorId;
  String creditorName;
  String debtorName;
  String creditorProfilePicture;
  String debtorProfilePicture;
  Money amount;
  TransactionStatus status;
  DateTime paymentDate;

  Transaction({
    required this.id,
    required this.isCreditor,
    required this.debtorId,
    required this.creditorId,
    required this.amount,
    required this.status,
    required this.paymentDate,
    required this.creditorName,
    required this.debtorName,
    required this.debtorProfilePicture,
    required this.creditorProfilePicture,
  });

  factory Transaction.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    final String uid = FirebaseAuth.instance.currentUser!.uid;
    return Transaction(
      id: doc.id,
      isCreditor: data['creditorId'] == uid ? true : false,
      debtorId: data['debtorId'],
      creditorId: data['creditorId'],
      amount: Money(data['amount']),
      status: Transaction.getStatusFromString(data['status']),
      paymentDate: (data['paymentDate'] as Timestamp).toDate(),
      creditorName: data['creditorName'],
      creditorProfilePicture: data['creditorProfilePicture'],
      debtorName: data['debtorName'],
      debtorProfilePicture: data['debtorProfilePicture'],
    );
  }

  static TransactionStatus getStatusFromString(String input) {
    switch (input) {
      case 'pending':
        return TransactionStatus.pending;
      case 'active':
        return TransactionStatus.active;
      case 'rejected':
        return TransactionStatus.rejected;
      case 'payment_pending':
        return TransactionStatus.payment_pending;
      case 'payment_accepted':
        return TransactionStatus.payment_accepted;
      default:
        throw Exception('No valid Transaction status');
    }
  }
}
