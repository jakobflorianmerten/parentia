part of 'load_transactions_bloc.dart';

@freezed
class LoadTransactionsState with _$LoadTransactionsState{
  const factory LoadTransactionsState.initial() = LoadTransactionsStateInitial;
  const factory LoadTransactionsState.loading() = LoadTransactionsStateLoading;
  const factory LoadTransactionsState.success(List<Transaction> activeTransactions, List<Transaction> notActiveTransactions, Money currentBalance) = LoadTransactionsStateSuccess;
  const factory LoadTransactionsState.error(String errorMessage) = LoadTransactionsStateError;
}
