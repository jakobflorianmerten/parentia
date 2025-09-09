import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:parentia/core/presentation/widgets/custom_long_clicked_element.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/core/presentation/widgets/information_widget_with_child.dart';
import 'package:parentia/core/presentation/widgets/user_widget.dart';
import 'package:parentia/features/transaction/application/blocs/transaction_history/transaction_history_bloc.dart';
import 'package:parentia/features/transaction/domain/entities/transaction.dart';

class TransactionHistoryListElement extends StatelessWidget {
  final Transaction transaction;
  const TransactionHistoryListElement({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    final DateTime date = transaction.paymentDate; // Beispiel
    final String formattedDate = DateFormat('dd.MM.yyyy').format(date);
    final euroFormat = NumberFormat.simpleCurrency(locale: 'de_DE', name: '€');
    final parentContext = context;


    return CustomLongClickedElement(
      onPressed: () {
        showAdaptiveActionSheet(
          context: context,
          androidBorderRadius: 30,
          actions: <BottomSheetAction>[
            BottomSheetAction(
              title: const Text('Löschen'),
              onPressed: (context) {
                BlocProvider.of<TransactionHistoryBloc>(parentContext).add(TransactionHistoryEvent.deleteTransaction(transaction.id));
                Navigator.of(context).pop();
              },
            ),
          ],
          cancelAction: CancelAction(
            title: const Text('Abbrechen'),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InformationWidgetWithChild(
              label: 'Schuldner',
              child: UserWidget(
                profilePicture: transaction.debtorProfilePicture,
                name: transaction.isCreditor == false
                    ? transaction.debtorName + ' (Du)'
                    : transaction.debtorName,
              ),
            ),
            addVerticalSpace(40),
            InformationWidgetWithChild(
              label: 'Kreditgeber',
              child: UserWidget(
                profilePicture: transaction.creditorProfilePicture,
                name: transaction.isCreditor == true
                    ? transaction.creditorName + ' (Du)'
                    : transaction.creditorName,
              ),
            ),
            addVerticalSpace(40),
            InformationWidgetWithChild(
              label: 'Betrag',
              child: Text(
                euroFormat.format(transaction.amount.getOrCrash()),
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            addVerticalSpace(40),
            InformationWidgetWithChild(
              label: 'Zahlungsdatum',
              child: Text(
                formattedDate,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
