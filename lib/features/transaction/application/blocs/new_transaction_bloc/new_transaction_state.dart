part of 'new_transaction_bloc.dart';

@freezed
abstract class NewTransactionState with _$NewTransactionState {
  const factory NewTransactionState({
    required bool isSubmitting,
    required Option<User> selectedUser,
    required Money amount,
    required DateTime paymentDate,
    required Option<Either<TransactionFailure, Unit>> failureOrSuccess,
  }) = _NewTransactionState;

  factory NewTransactionState.initial() => NewTransactionState(
    selectedUser: none(),
    amount: Money(0),
    paymentDate: DateTime.now(),
    failureOrSuccess: none(),
    isSubmitting: false
  );
}
