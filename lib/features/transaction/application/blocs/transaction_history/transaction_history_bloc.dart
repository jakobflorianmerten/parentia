import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parentia/features/transaction/domain/entities/transaction.dart';
import 'package:parentia/features/transaction/domain/repositories/transaction_repository.dart';

part 'transaction_history_event.dart';
part 'transaction_history_state.dart';

part 'transaction_history_bloc.freezed.dart';

class TransactionHistoryBloc extends Bloc<TransactionHistoryEvent, TransactionHistoryState> {

  TransactionRepository _repo;
  late StreamSubscription _subscription;

  TransactionHistoryBloc(this._repo) : super(TransactionHistoryState.inital()) {

    _subscription = _repo.transactionHistoryStream.listen((transactions) {
      add(TransactionHistoryEvent.updated(transactions));
    });

    on<TransactionHistoryEventLoad>((event, emit) async {
      emit(TransactionHistoryState.loading());
      final result = await _repo.getTransactionHistory();
      result.fold((failure) {
        emit(TransactionHistoryState.error("Es ist etwas schie gelaufen"));
      }, (transactions) {
        emit(TransactionHistoryState.success(transactions));
      });
    });

    on<TransactionHistoryEventUpdated>((event, emit) {
      emit(TransactionHistoryState.success(event.transactions));
    });

    on<TransactionHistoryEventDeleteTransaction>((event, emit) async {
      emit(TransactionHistoryState.loading());
      final result = await _repo.deleteTransactionFromHistory(event.transactionId);
      result.fold((failure) {
        emit(TransactionHistoryState.error("Es ist etwas schief gelaufen"));
      }, (_) {
        
      });

    });

  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
