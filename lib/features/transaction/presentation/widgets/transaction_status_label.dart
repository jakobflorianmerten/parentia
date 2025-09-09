import 'package:flutter/material.dart';
import 'package:parentia/features/transaction/domain/entities/transaction.dart';
import 'package:parentia/l10n/app_localizations.dart';

class TransactionStatusLabel extends StatelessWidget {
  final TransactionStatus status;
  const TransactionStatusLabel({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    bool isPending = status == TransactionStatus.pending;
    late String displayText;

    switch (status) {
      case TransactionStatus.pending:
        displayText = AppLocalizations.of(context)!.transaction_status_pending;
        break;
      case TransactionStatus.active:
        displayText = AppLocalizations.of(context)!.transaction_status_active;
        break;
      case TransactionStatus.rejected:
        displayText = AppLocalizations.of(context)!.transaction_status_rejected;
        break;
      case TransactionStatus.payment_pending:
        displayText = AppLocalizations.of(context)!.transaction_status_payment_pending;
        break;
      case TransactionStatus.payment_accepted:
        displayText = AppLocalizations.of(context)!.transaction_status_payment_accepted;
        break;
    }

    return Text(
      displayText,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
        color: isPending == true
            ? Theme.of(context).colorScheme.tertiary
            : Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
