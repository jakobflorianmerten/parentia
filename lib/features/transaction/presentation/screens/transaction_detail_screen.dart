import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:parentia/core/presentation/animation/custom_loading_animation_element.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/core/presentation/widgets/information_widget_with_child.dart';
import 'package:parentia/core/presentation/widgets/user_widget.dart';
import 'package:parentia/custom_toastmessages/message_service.dart';
import 'package:parentia/custom_toastmessages/overlay_widget.dart';
import 'package:parentia/features/transaction/application/blocs/transaction/transaction_bloc.dart';
import 'package:parentia/features/transaction/domain/entities/transaction.dart';
import 'package:parentia/l10n/app_localizations.dart';

class TransactionDetailScreen extends StatelessWidget {
  final Transaction transaction;
  const TransactionDetailScreen({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final DateTime date = transaction.paymentDate; // Beispiel
    final String formattedDate = DateFormat('dd.MM.yyyy').format(date);
    final euroFormat = NumberFormat.simpleCurrency(locale: 'de_DE', name: '€');
    return BlocConsumer<TransactionBloc, TransactionState>(
      listener: (context, state) {
        if (state is TransactionStateSuccess &&
            state.transactionId == transaction.id) {
          MessageService.show(
            context,
            title: AppLocalizations.of(
              context,
            )!.success_transactionCreatedTitle,
            message: AppLocalizations.of(
              context,
            )!.success_transactionCreatedDescription,
            type: MessageType.success,
          );
          Navigator.of(context).pop();
        }
      },
      builder: (context, state) {
        if (state is TransactionStateLoading &&
            state.transactionId == transaction.id)
          return SizedBox(
            height: screenHeight * 0.8,
            child: Center(child: CustomLoadingAnimationElement()),
          );

        return SafeArea(
          child: Container(
            height: screenHeight * 0.6, 
            padding: const EdgeInsets.all(20.0),
            child: Stack(
              children: [
                transaction.isCreditor == false
                    ? Positioned(
                        bottom: 20,
                        right: 0,
                        child: CustomClickedElement(
                          child: Container(
                            padding: EdgeInsets.all(18),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                AppLocalizations.of(context)!.pay,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                          ),
                          onPressed: () {
                            BlocProvider.of<TransactionBloc>(context).add(
                              TransactionEvent.payTransaction(transaction.id),
                            );
                          },
                        ),
                      )
                    : Container(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InformationWidgetWithChild(
                          label: AppLocalizations.of(context)!.debtor,
                          child: UserWidget(
                            profilePicture: transaction.debtorProfilePicture,
                            name: transaction.isCreditor == false
                                ? transaction.debtorName + ' (Du)'
                                : transaction.debtorName,
                          ),
                        ),
                        addVerticalSpace(40),
                        InformationWidgetWithChild(
                          label: AppLocalizations.of(context)!.creditor,
                          child: UserWidget(
                            profilePicture:
                                transaction.creditorProfilePicture,
                            name: transaction.isCreditor == true
                                ? transaction.creditorName + ' (Du)'
                                : transaction.creditorName,
                          ),
                        ),
                        addVerticalSpace(40),
                        InformationWidgetWithChild(
                          label: AppLocalizations.of(
                            context,
                          )!.amount_in_euros,
                          child: Text(
                            euroFormat.format(
                              transaction.amount.getOrCrash(),
                            ),
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                        addVerticalSpace(40),
                        InformationWidgetWithChild(
                          label: AppLocalizations.of(context)!.paymentDate,
                          child: Text(
                            formattedDate,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                        addVerticalSpace(30)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
