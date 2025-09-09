

import 'package:dartz/dartz.dart';
import 'package:parentia/features/account/domain/entities/user.dart';
import 'package:parentia/features/transaction/domain/entities/transaction.dart';
import 'package:parentia/features/transaction/domain/failures/transaction_failures.dart';
import 'package:parentia/features/transaction/domain/value_objects/money.dart';

abstract class TransactionRepository {
  Future<Either<TransactionFailure, Unit>> addTransaction(Money amount, User debtor, DateTime paymentDate);
  Future<Either<TransactionFailure, Unit>> acceptTransaction(String transactionId);
  Future<Either<TransactionFailure, Unit>> declineTransaction(String transactionId);
  Future<Either<TransactionFailure, Unit>> payTransaction(String transactionId);
  Future<Either<TransactionFailure, Unit>> acceptPayment(String transactionId);
  Future<Either<TransactionFailure, Unit>> rejectPayment(String transactionId);
  Future<Either<TransactionFailure, List<Transaction>>> getCurrentTransactionsByUserId(String uid);
  Future<Either<TransactionFailure, List<Transaction>>> getTransactionHistory();
  Future<Either<TransactionFailure, Unit>> deleteTransactionFromHistory(String transactionId);

  Stream<List<Transaction>> get currentTransactions;
  Stream<List<Transaction>> get transactionHistoryStream;
}