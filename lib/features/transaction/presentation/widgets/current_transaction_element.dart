import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:parentia/core/presentation/animation/custom_loading_animation_element.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/core/presentation/widgets/profile_picture_or_name.dart';
import 'package:parentia/core/presentation/widgets/two_action_buttons.dart';
import 'package:parentia/features/transaction/application/blocs/transaction/transaction_bloc.dart';
import 'package:parentia/features/transaction/domain/entities/transaction.dart';
import 'package:parentia/features/transaction/presentation/screens/modal_sheet.dart';
import 'package:parentia/features/transaction/presentation/widgets/transaction_status_label.dart';
import 'package:parentia/l10n/app_localizations.dart';

class CurrentTransactionElement extends StatelessWidget {
  final Transaction transaction;
  const CurrentTransactionElement({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    final euroFormat = NumberFormat.simpleCurrency(locale: 'de_DE', name: '€');
    return Builder(
      builder: (context) {
        return Column(
          children: [
            CustomClickedElement(
              isNotActive: transaction.status != TransactionStatus.active,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.all(15.0),
                child: BlocBuilder<TransactionBloc, TransactionState>(
                  builder: (context, state) {
                    if (state is TransactionStateLoading &&
                        state.transactionId == transaction.id) {
                      return Center(child: CustomLoadingAnimationElement());
                    }
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: ProfilePictureOrName(
                                    profilePicture:
                                        transaction.isCreditor == true
                                        ? transaction.debtorProfilePicture
                                        : transaction.creditorProfilePicture,
                                    name: transaction.isCreditor == true
                                        ? transaction.debtorName
                                        : transaction.creditorName,
                                  ),
                                ),
                                addHorizontalSpace(15),
                                Row(
                                  children: [
                                    Text(
                                      transaction.isCreditor == true
                                          ? transaction.debtorName
                                          : transaction.creditorName,
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                transaction.isCreditor == true
                                    ? Text(
                                        "+ ",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .copyWith(
                                              color: Colors.green,
                                            ),
                                      )
                                    : Text(
                                        "- ",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .copyWith(
                                              color: Theme.of(
                                                context,
                                              ).colorScheme.error,
                                            ),
                                      ),
                                addHorizontalSpace(2),
                                Text(
                                  euroFormat.format(
                                    transaction.amount.getOrCrash(),
                                  ),
                                  style:
                                      Theme.of(
                                        context,
                                      ).textTheme.bodyLarge!.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: transaction.isCreditor == true
                                            ? Colors.green
                                            : Theme.of(
                                                context,
                                              ).colorScheme.error,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        addVerticalSpace(10),
                        Container(
                          width: double.infinity,
                          height: 1,
                          color: Colors.white.withValues(alpha: 0.3),
                        ),
                        addVerticalSpace(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TransactionStatusLabel(
                              status: transaction.status,
                            ),
                            transaction.status == TransactionStatus.active
                                ? Icon(Icons.arrow_forward_ios, size: 10)
                                : Container(),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
              onPressed: () {
                showTransactionModalBottomSheet(context, transaction);
              },
            ),
            // when the transaction is not active and the user is the debtor, show the two buttons where the user can react to the transaction
            transaction.isCreditor == false &&
                    transaction.status == TransactionStatus.pending
                ? Column(
                    children: [
                      addVerticalSpace(15),
                      TwoActionButtons(
                        textLeft: AppLocalizations.of(context)!.reject,
                        textRight: AppLocalizations.of(context)!.accept,
                        onPressedLeft: () {
                          BlocProvider.of<TransactionBloc>(
                            context,
                          ).add(
                            TransactionEvent.rejectTransaction(
                              transaction.id,
                            ),
                          );
                        },
                        onPressedRight: () {
                          BlocProvider.of<TransactionBloc>(
                            context,
                          ).add(
                            TransactionEvent.acceptTransaction(
                              transaction.id,
                            ),
                          );
                        },
                      ),
                    ],
                  )
                : Container(),
            transaction.isCreditor == true &&
                    transaction.status == TransactionStatus.payment_pending
                ? Column(
                    children: [
                      TwoActionButtons(
                        textLeft: AppLocalizations.of(context)!.reject,
                        textRight: AppLocalizations.of(context)!.accept,
                        onPressedLeft: () {
                          BlocProvider.of<TransactionBloc>(
                            context,
                          ).add(
                            TransactionEvent.rejectPayment(
                              transaction.id,
                            ),
                          );
                        },
                        onPressedRight: () {
                          BlocProvider.of<TransactionBloc>(
                            context,
                          ).add(
                            TransactionEvent.acceptPayment(
                              transaction.id,
                            ),
                          );
                        },
                      ),
                    ],
                  )
                : Container(),
          ],
        );
      },
    );
  }
}
