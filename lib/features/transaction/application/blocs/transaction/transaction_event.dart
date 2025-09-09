part of 'transaction_bloc.dart';

@freezed
abstract class TransactionEvent with _$TransactionEvent{
  const factory TransactionEvent.acceptTransaction(String transactionId) = AcceptTransaction;
  const factory TransactionEvent.rejectTransaction(String transactionId) = RejectTransaction;
  const factory TransactionEvent.payTransaction(String transactionId) = PayTransaction;
  const factory TransactionEvent.acceptPayment(String transactionId) = AcceptPayment;
  const factory TransactionEvent.rejectPayment(String transactionId) = RejectPayment;
}
