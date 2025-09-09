import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parentia/features/account/domain/entities/user.dart';
import 'package:parentia/features/transaction/domain/failures/transaction_failures.dart';
import 'package:parentia/features/transaction/domain/repositories/transaction_repository.dart';
import 'package:parentia/features/transaction/domain/value_objects/money.dart';


part 'new_transaction_event.dart';
part 'new_transaction_state.dart';

part 'new_transaction_bloc.freezed.dart';

class NewTransactionBloc extends Bloc<NewTransactionEvent, NewTransactionState> {
  TransactionRepository _repo;
  NewTransactionBloc(this._repo) : super(NewTransactionState.initial()) {
    on<SelectedTransactionPartner>((event, emit) {
      emit(state.copyWith(selectedUser: some(event.user), failureOrSuccess: none()));
    });

    on<SelectedTransactionPrice>((event, emit) {
      emit(state.copyWith(amount: Money(event.amount), failureOrSuccess: none()));
    });

    on<SelectedPaymentDate>((event, emit) {
      emit(state.copyWith(paymentDate: event.date, failureOrSuccess: none()));
    });

    on<SubmitTransaction>((event, emit) async {
      emit(state.copyWith(isSubmitting: true, failureOrSuccess: none()));
      if (!state.amount.isValid() || state.selectedUser.isNone()) {
        emit(state.copyWith(failureOrSuccess: some(left(TransactionFailure.valueError())), isSubmitting: false));
      }
      final result = await _repo.addTransaction(state.amount, state.selectedUser.getOrElse(() => throw Error()), state.paymentDate);
      emit(state.copyWith(failureOrSuccess: some(result), isSubmitting: false));
    });
  }
}
