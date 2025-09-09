import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_failures.freezed.dart';

@freezed
abstract class TransactionFailure with _$TransactionFailure{
  const factory TransactionFailure.transactionServerError() = TransactionServerError;
  const factory TransactionFailure.valueError() = ValueError;
  const factory TransactionFailure.sameDebtorAndCreditorError() = SameDebtorAndCreditorError;

}