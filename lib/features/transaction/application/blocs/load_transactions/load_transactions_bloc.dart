import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parentia/features/transaction/domain/entities/transaction.dart';
import 'package:parentia/features/transaction/domain/repositories/transaction_repository.dart';
import 'package:parentia/features/transaction/domain/value_objects/money.dart';

part 'load_transactions_event.dart';
part 'load_transactions_state.dart';

part 'load_transactions_bloc.freezed.dart';

class LoadTransactionsBloc
    extends Bloc<LoadTransactionsEvent, LoadTransactionsState> {
  TransactionRepository _repo;
  late StreamSubscription _subscription;

  LoadTransactionsBloc(this._repo) : super(LoadTransactionsState.initial()) {
    _subscription = _repo.currentTransactions.listen((transactions) {
      add(LoadTransactionsEvent.updateTransactions(transactions));
    });

    on<LoadTransactions>((event, emit) async {
      emit(LoadTransactionsState.loading());
      String currentUid = FirebaseAuth.instance.currentUser!.uid;
      final result = await _repo.getCurrentTransactionsByUserId(currentUid);

      result.fold((failure) {}, (transactions) {
        List<Transaction> activeTransactions = transactions
            .where((element) => element.status != TransactionStatus.pending)
            .toList();
        List<Transaction> notActiveTransactions = transactions
            .where((element) => element.status == TransactionStatus.pending)
            .toList();

        emit(
          LoadTransactionsState.success(
            activeTransactions,
            notActiveTransactions,
            _calculateCurrentBalanceByListOfTransactions(transactions),
          ),
        );
      });
    });

    on<UpdateTransactions>((event, emit) {
      List<Transaction> activeTransactions = event.transactions
          .where((element) => element.status != TransactionStatus.pending)
          .toList();
      List<Transaction> notActiveTransactions = event.transactions
          .where((element) => element.status == TransactionStatus.pending)
          .toList();
      emit(
        LoadTransactionsState.success(
          activeTransactions,
          notActiveTransactions,
          _calculateCurrentBalanceByListOfTransactions(event.transactions),
        ),
      );
    });
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}

Money _calculateCurrentBalanceByListOfTransactions(
  List<Transaction> transactions,
) {
  double balance = 0.0;
  for (Transaction transaction in transactions) {
    if (transaction.status != TransactionStatus.active) continue;
    if (transaction.isCreditor) {
      balance = balance + transaction.amount.getOrCrash();
    } else {
      balance = balance - transaction.amount.getOrCrash();
    }
  }
  return Money(balance);
}
