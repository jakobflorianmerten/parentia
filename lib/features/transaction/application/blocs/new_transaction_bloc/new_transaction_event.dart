part of 'new_transaction_bloc.dart';

@freezed
abstract class NewTransactionEvent with _$NewTransactionEvent{
  const factory NewTransactionEvent.selectedTransactionPartner(User user) = SelectedTransactionPartner;
    const factory NewTransactionEvent.selectedTransactionPrice(double amount) = SelectedTransactionPrice;
    const factory NewTransactionEvent.selectedPaymentDate(DateTime date) = SelectedPaymentDate;
    const factory NewTransactionEvent.submitTransaction() = SubmitTransaction;


}