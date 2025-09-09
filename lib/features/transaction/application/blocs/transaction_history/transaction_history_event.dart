part of 'transaction_history_bloc.dart';

@freezed
class TransactionHistoryEvent with _$TransactionHistoryEvent{
  const factory TransactionHistoryEvent.load() = TransactionHistoryEventLoad;
  const factory TransactionHistoryEvent.updated(List<Transaction> transactions) = TransactionHistoryEventUpdated;
  const factory TransactionHistoryEvent.deleteTransaction(String transactionId) = TransactionHistoryEventDeleteTransaction;
}
