import 'package:bloc/bloc.dart';
import 'package:parentia/features/transaction/domain/repositories/transaction_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';

part 'transaction_bloc.freezed.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionRepository _repo;

  TransactionBloc(this._repo) : super(TransactionState.inital()) {
    on<AcceptTransaction>((event, emit) async {
      emit(TransactionState.loading(transactionId: event.transactionId));

      final result = await _repo.acceptTransaction(event.transactionId);
      result.fold(
        (failure) {
          emit(
            TransactionState.error(
              errorMessage: "Es ist etwas schief gelaufen",
            ),
          );
        },
        (success) {
          emit(TransactionState.success(transactionId: event.transactionId));
        },
      );
    });
    on<RejectTransaction>((event, emit) async {
      emit(TransactionState.loading(transactionId: event.transactionId));

      final result = await _repo.declineTransaction(event.transactionId);
      result.fold(
        (failure) {
          //emit(TransactionState.error(errorMessage: "Es ist etwas schief gelaufen"));
        },
        (success) {
          emit(TransactionState.success(transactionId: event.transactionId));
        },
      );
    });

    on<PayTransaction>((event, emit) async {
      emit(TransactionState.loading(transactionId: event.transactionId));
      final result = await _repo.payTransaction(event.transactionId);
      result.fold(
        (failure) {
          emit(TransactionState.error(errorMessage: "Es ist etwas schief gelaufen"));
        },
        (success) {
          emit(TransactionState.success(transactionId: event.transactionId));
        },
      );
    });

    on<AcceptPayment>((event, emit) async {
      emit(TransactionState.loading(transactionId: event.transactionId));
      final result = await _repo.acceptPayment(event.transactionId);
      result.fold(
        (failure) {
          emit(TransactionState.error(errorMessage: "Es ist etwas schief gelaufen"));
        },
        (success) {
          emit(TransactionState.success(transactionId: event.transactionId));
        },
      );
    });

    on<RejectPayment>((event, emit) async {
      emit(TransactionState.loading(transactionId: event.transactionId));
      final result = await _repo.rejectPayment(event.transactionId);
      result.fold(
        (failure) {
          emit(
            TransactionState.error(
              errorMessage: "Es ist etwas schief gelaufen",
            ),
          );
        },
        (success) {
          emit(TransactionState.success(transactionId: event.transactionId));
        },
      );
    });
  }
}
