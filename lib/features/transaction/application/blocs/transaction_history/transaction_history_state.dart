part of 'transaction_history_bloc.dart';

@freezed
class TransactionHistoryState with _$TransactionHistoryState{
  const factory TransactionHistoryState.inital() = TransactionHistoryStateInital;
  const factory TransactionHistoryState.loading() = TransactionHistoryStateLoading;
  const factory TransactionHistoryState.success(List<Transaction> transactions) = TransactionHistoryStateSuccess;
  const factory TransactionHistoryState.error(String message) = TransactionHistoryStateError;
}
