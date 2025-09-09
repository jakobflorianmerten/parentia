import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:parentia/core/presentation/animation/custom_loading_animation_element.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/core/presentation/widgets/information_widget.dart';
import 'package:parentia/custom_toastmessages/message_service.dart';
import 'package:parentia/custom_toastmessages/overlay_widget.dart';
import 'package:parentia/features/transaction/application/blocs/new_transaction_bloc/new_transaction_bloc.dart';
import 'package:parentia/features/transaction/presentation/screens/modal_sheet.dart';
import 'package:parentia/l10n/app_localizations.dart';

class TransactionSummaryWidget extends StatelessWidget {
  const TransactionSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(20),
      child: BlocConsumer<NewTransactionBloc, NewTransactionState>(
        listener: (context, state) {
          if (state.failureOrSuccess.isSome()) {
            state.failureOrSuccess.fold(() => throw (Error()), (value) {
              value.fold(
                (failure) {
                  MessageService.show(
                    context,
                    title: AppLocalizations.of(context)!.error_transactionCreateTitle,
                    message: AppLocalizations.of(context)!.error_transactionCreateDescription,
                    type: MessageType.error,
                  );
                },
                (_) async {
                  MessageService.show(
                    context,
                    title: AppLocalizations.of(context)!.success_transactionCreatedTitle,
                    message: AppLocalizations.of(context)!.success_transactionCreatedDescription,
                    type: MessageType.success,
                  );
                  Navigator.pop(context);
                },
              );
            });
          }
        },
        builder: (context, state) {
          print(state.selectedUser.isSome());
          String selectedUserName = state.selectedUser
              .getOrElse(() => throw Error())
              .fullName;
          double amount = state.amount.getOrCrash();
          String amountString = amount.toStringAsFixed(2).replaceAll('.', ',');
          String dateString = DateFormat(
            'dd.MM.yyyy',
          ).format(state.paymentDate);
          if (state.isSubmitting == true) {
            return Center(child: CustomLoadingAnimationElement());
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InformationWidget(label: AppLocalizations.of(context)!.person.toUpperCase(), value: selectedUserName),
              addVerticalSpace(20),
              InformationWidget(label: AppLocalizations.of(context)!.amount.toUpperCase(), value: amountString),
              addVerticalSpace(20),
              InformationWidget(label: AppLocalizations.of(context)!.paymentDate.toUpperCase(), value: dateString),
              addVerticalSpace(40),
              Row(
                children: [
                  Expanded(
                    child: CustomClickedElement(
                      onPressed: () {
                        modalSheetPageIndexNotifier.value--;
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            AppLocalizations.of(context)!.back,
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 55,
                      ),
                    ),
                  ),
                  addHorizontalSpace(15),
                  Expanded(
                    child: CustomClickedElement(
                      onPressed: () {
                        BlocProvider.of<NewTransactionBloc>(
                          context,
                        ).add(NewTransactionEvent.submitTransaction());
                        //Navigator.of(context).pop();
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            AppLocalizations.of(context)!.send,
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 55,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
