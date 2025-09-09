import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/services.dart';
import 'package:parentia/features/account/domain/entities/user.dart';
import 'package:parentia/features/account/infrastructure/repositories/user_repository.dart';
import 'package:parentia/features/transaction/domain/failures/transaction_failures.dart';
import 'package:parentia/features/transaction/domain/repositories/transaction_repository.dart';
import 'package:parentia/features/transaction/domain/value_objects/money.dart';
import 'package:parentia/features/transaction/domain/entities/transaction.dart'
    as t;

class TransactionRepositoryImpl implements TransactionRepository {
  final _firestore = FirebaseFirestore.instance;
  final _auth = auth.FirebaseAuth.instance;

  @override
  Stream<List<t.Transaction>> get transactionHistoryStream =>
      getTransactionHistoryStream();

  @override
  Stream<List<t.Transaction>> get currentTransactions =>
      getCurrentTransactionsStream();

  Stream<List<t.Transaction>> getTransactionHistoryStream() {
    String uid = _auth.currentUser!.uid;
    return _firestore
        .collection('transactions')
        .where('participants', arrayContains: uid)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => t.Transaction.fromFirestore(doc))
              .toList(),
        );
  }

  Stream<List<t.Transaction>> getCurrentTransactionsStream() {
    String uid = _auth.currentUser!.uid;
    return _firestore
        .collection('transactions')
        .where('participants', arrayContains: uid)
        .where('status', whereIn: ['pending', 'active', 'payment_pending'])
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => t.Transaction.fromFirestore(doc))
              .toList(),
        );
  }

  @override
  Future<Either<TransactionFailure, Unit>> acceptTransaction(
    String transactionId,
  ) async {
    try {
      await _firestore.collection('transactions').doc(transactionId).update({
        'status': 'active',
      });
      return right(unit);
    } on PlatformException catch (e) {
      print(e);
      return left(TransactionFailure.transactionServerError());
    } catch (e) {
      print(e);
      return left(TransactionFailure.transactionServerError());
    }
  }

  @override
  Future<Either<TransactionFailure, Unit>> addTransaction(
    Money amount,
    User debtor,
    DateTime paymentDate,
  ) async {
    try {
      final currentUserId = _auth.currentUser!.uid;
      final User? currentUser = await UserRepositoryImpl.getCurrentUser();
      if (currentUser == null) throw Error();

      final data = {
        'creditorId': currentUserId,
        'debtorId': debtor.id,
        'participants': [currentUserId, debtor.id],
        'amount': amount.getOrCrash(),
        'status': 'pending',
        'paymentDate': paymentDate,
        'creditorName': currentUser.fullName,
        'debtorName': debtor.fullName,
        'creditorProfilePicture': currentUser.profilePicture,
        'debtorProfilePicture': debtor.profilePicture,
      };

      await _firestore.collection('transactions').add(data);
      return right(unit);
    } on PlatformException catch (e) {
      print(e);
      return left(TransactionFailure.transactionServerError());
    }
  }

  @override
  Future<Either<TransactionFailure, Unit>> declineTransaction(
    String transactionId,
  ) async {
    try {
      await _firestore.collection('transactions').doc(transactionId).update({
        'status': 'rejected',
      });
      return right(unit);
    } on PlatformException catch (e) {
      print(e);
      return left(TransactionFailure.transactionServerError());
    } catch (e) {
      print(e);
      return left(TransactionFailure.transactionServerError());
    }
  }

  @override
  Future<Either<TransactionFailure, List<t.Transaction>>>
  getCurrentTransactionsByUserId(String uid) async {
    try {
      final results = await _firestore
          .collection('transactions')
          .where('participants', arrayContains: uid)
          .where('status', whereIn: ['pending', 'active', 'payment_pending'])
          .get();
      final transactions = results.docs.map((doc) {
        return t.Transaction.fromFirestore(doc);
      });
      return right(transactions.toList());
    } on PlatformException catch (e) {
      print(e);
      return left(TransactionFailure.transactionServerError());
    } catch (e) {
      print(e);
      return left(TransactionFailure.transactionServerError());
    }
  }

  @override
  Future<Either<TransactionFailure, List<t.Transaction>>>
  getTransactionHistory() async {
    final String uid = _auth.currentUser!.uid;
    try {
      final results = await _firestore
          .collection('transactions')
          .where('participants', arrayContains: uid)
          .get();
      final transactions = results.docs.map((doc) {
        final data = doc.data();
        return t.Transaction(
          id: doc.id,
          isCreditor: data['creditorId'] == uid ? true : false,
          debtorId: data['debtorId'],
          creditorId: data['creditorId'],
          amount: Money(data['amount']),
          status: t.Transaction.getStatusFromString(data['status']),
          paymentDate: (data['paymentDate'] as Timestamp).toDate(),
          creditorName: data['creditorName'],
          creditorProfilePicture: data['creditorProfilePicture'],
          debtorName: data['debtorName'],
          debtorProfilePicture: data['debtorProfilePicture'],
        );
      });
      return right(transactions.toList());
    } on PlatformException catch (e) {
      print(e);
      return left(TransactionFailure.transactionServerError());
    } catch (e) {
      print(e);
      return left(TransactionFailure.transactionServerError());
    }
  }

  @override
  Future<Either<TransactionFailure, Unit>> payTransaction(
    String transactionId,
  ) async {
    try {
      await _firestore.runTransaction((transaction) async {
        final transactionRef = _firestore
            .collection('transactions')
            .doc(transactionId);
        // Status im Transaction-Dokument ändern
        transaction.update(transactionRef, {'status': 'payment_pending'});

        // Payment als Subcollection hinzufügen
        final paymentsRef = transactionRef.collection('payments').doc();
        transaction.set(paymentsRef, {
          'status': 'pending',
          'timestamp': FieldValue.serverTimestamp(),
        });
      });
      return right(unit);
    } on PlatformException catch (e) {
      print(e);
      return left(TransactionFailure.transactionServerError());
    } catch (e) {
      print(e);
      return left(TransactionFailure.transactionServerError());
    }
  }

  @override
  Future<Either<TransactionFailure, Unit>> acceptPayment(
    String transactionId,
  ) async {
    try {
      await _firestore.runTransaction((transaction) async {
        final transactionRef = _firestore
            .collection('transactions')
            .doc(transactionId);

        // Status im Transaction-Dokument ändern
        transaction.update(transactionRef, {'status': 'payment_accepted'});

        // Letztes Payment-Dokument holen (nach timestamp absteigend sortiert, nur das erste)
        final paymentsQuery = await transactionRef
            .collection('payments')
            .orderBy('timestamp', descending: true)
            .limit(1)
            .get();

        if (paymentsQuery.docs.isNotEmpty) {
          final lastPaymentDoc = paymentsQuery.docs.first.reference;
          transaction.update(lastPaymentDoc, {
            'status': 'accepted',
          });
        }
      });

      return right(unit);
    } on PlatformException catch (e) {
      print(e);
      return left(TransactionFailure.transactionServerError());
    } catch (e) {
      print(e);
      return left(TransactionFailure.transactionServerError());
    }
  }

  @override
  Future<Either<TransactionFailure, Unit>> rejectPayment(
    String transactionId,
  ) async {
    try {
      await _firestore.runTransaction((transaction) async {
        final transactionRef = _firestore
            .collection('transactions')
            .doc(transactionId);

        // Status im Transaction-Dokument ändern
        transaction.update(transactionRef, {'status': 'active'});

        // Letztes Payment-Dokument holen (nach timestamp absteigend sortiert, nur das erste)
        final paymentsQuery = await transactionRef
            .collection('payments')
            .orderBy('timestamp', descending: true)
            .limit(1)
            .get();

        if (paymentsQuery.docs.isNotEmpty) {
          final lastPaymentDoc = paymentsQuery.docs.first.reference;
          transaction.update(lastPaymentDoc, {
            'status': 'rejected',
          });
        }
      });

      return right(unit);
    } on PlatformException catch (e) {
      print(e);
      return left(TransactionFailure.transactionServerError());
    } catch (e) {
      print(e);
      return left(TransactionFailure.transactionServerError());
    }
  }

  @override
  Future<Either<TransactionFailure, Unit>> deleteTransactionFromHistory(
    String transactionId,
  ) async {
    try {
      await _firestore.collection('transactions').doc(transactionId).delete();
      return right(unit);
    } on PlatformException catch (e) {
      print(e);
      return left(TransactionFailure.transactionServerError());
    } catch (e) {
      print(e);
      return left(TransactionFailure.transactionServerError());
    }
  }
}
