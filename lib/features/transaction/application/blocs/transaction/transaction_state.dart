part of 'transaction_bloc.dart';

@freezed
abstract class TransactionState with _$TransactionState{
  const factory TransactionState.inital() = TransactionStateInitial;
  const factory TransactionState.loading({ required String transactionId }) = TransactionStateLoading;
  const factory TransactionState.error() = TransactionStateError;
  const factory TransactionState.success({ required String transactionId }) = TransactionStateSuccess;

}
