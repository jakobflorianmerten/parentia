part of 'load_transactions_bloc.dart';

@freezed
class LoadTransactionsEvent with _$LoadTransactionsEvent{
  const factory LoadTransactionsEvent.loadTransactions() = LoadTransactions;
  const factory LoadTransactionsEvent.updateTransactions(List<Transaction> transactions) = UpdateTransactions;
}
