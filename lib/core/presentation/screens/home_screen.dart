import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parentia/core/blocs/qr_code_user_bloc/qr_code_user_bloc.dart';
import 'package:parentia/core/get_it.dart';
import 'package:parentia/core/presentation/animation/custom_loading_animation_element.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/custom_toastmessages/message_service.dart';
import 'package:parentia/custom_toastmessages/overlay_widget.dart';
import 'package:parentia/features/account/presentation/delegates/app_bar_delegate.dart';
import 'package:parentia/features/account/presentation/delegates/home_balance_card_delegate.dart';
import 'package:parentia/features/transaction/application/blocs/load_transactions/load_transactions_bloc.dart';
import 'package:parentia/features/transaction/application/blocs/transaction/transaction_bloc.dart';
import 'package:parentia/features/transaction/presentation/screens/modal_sheet.dart';
import 'package:parentia/features/transaction/presentation/widgets/current_transaction_element.dart';
import 'package:parentia/l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  final String? transactionPartnerUid;
  const HomeScreen({super.key, this.transactionPartnerUid});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    if (widget.transactionPartnerUid != null &&
        widget.transactionPartnerUid != '') {
      BlocProvider.of<QrCodeUserBloc>(
        context,
      ).add(QrCodeUserEvent.loadUser(widget.transactionPartnerUid!));
      super.initState();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          locator<LoadTransactionsBloc>()
            ..add(LoadTransactionsEvent.loadTransactions()),
      child: Builder(
        builder: (context) {
          return BlocConsumer<QrCodeUserBloc, QrCodeUserState>(
            listener: (context, state) {
              if (state is QrCodeUserStateSuccess) {
                showTransactionWoltModalSheet(
                  context,
                  user: state.user,
                );
              }
              if (state is QrCodeUserStateError) {
                MessageService.show(
                  context,
                  title: 'Error loading user',
                  message: state.errorMessage,
                  type: MessageType.error,
                );
              }
            },
            builder: (context, state) {
              if (state is QrCodeUserStateLoading) {
                return Center(
                  child: CustomLoadingAnimationElement(),
                );
              }
              return BlocConsumer<LoadTransactionsBloc, LoadTransactionsState>(
                listener: (context, state) {
                  if (state is LoadTransactionsStateError) {
                    MessageService.show(
                      context,
                      title: AppLocalizations.of(
                        context,
                      )!.error_defaultMessageTitle,
                      message: AppLocalizations.of(
                        context,
                      )!.error_defaultMessageDescription,
                      type: MessageType.error,
                    );
                  }
                },
                builder: (context, state) {
                  if (state is LoadTransactionsStateSuccess) {
                    return BlocListener<TransactionBloc, TransactionState>(
                      listener: (context, state) {
                        if (state is TransactionStateSuccess) {
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
                        }
                        if (state is TransactionStateError) {
                          MessageService.show(
                            context,
                            title: AppLocalizations.of(
                              context,
                            )!.error_defaultMessageTitle,
                            message: AppLocalizations.of(
                              context,
                            )!.error_defaultMessageDescription,
                            type: MessageType.error,
                          );
                        }
                      },
                      child: SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 0,
                          ),
                          child: CustomScrollView(
                            slivers: [
                              SliverPersistentHeader(
                                pinned: true,
                                delegate: CustomAppBarDelegate(),
                              ),
                              SliverPadding(
                                padding: EdgeInsetsGeometry.symmetric(
                                  vertical: 20,
                                ),
                                sliver: SliverPersistentHeader(
                                  delegate: HomeBalanceCardDelegate(
                                    balance: state.currentBalance,
                                  ),
                                  pinned: true,
                                ),
                              ),
                              state.activeTransactions.length == 0 &&
                                      state.notActiveTransactions.length == 0
                                  ? SliverToBoxAdapter(
                                      child: Text(
                                        AppLocalizations.of(
                                          context,
                                        )!.noCurrentTransactions,
                                      ),
                                    )
                                  : SliverToBoxAdapter(),
                              state.activeTransactions.length != 0
                                  ? SliverToBoxAdapter(
                                      child: Text(
                                        AppLocalizations.of(
                                          context,
                                        )!.activeTransactions.toUpperCase(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall!
                                            .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSurface
                                                  .withValues(alpha: 0.4),
                                              fontWeight: FontWeight.w700,
                                            ),
                                      ),
                                    )
                                  : SliverToBoxAdapter(),
                              state.activeTransactions.length != 0
                                  ? SliverToBoxAdapter(
                                      child: addVerticalSpace(15),
                                    )
                                  : SliverToBoxAdapter(),
                              SliverList.separated(
                                itemCount: state.activeTransactions.length,
                                separatorBuilder: (context, index) {
                                  return addVerticalSpace(20);
                                },
                                itemBuilder: (context, index) =>
                                    CurrentTransactionElement(
                                      transaction:
                                          state.activeTransactions[index],
                                    ),
                              ),
                              state.activeTransactions.length != 0
                                  ? SliverToBoxAdapter(
                                      child: addVerticalSpace(25),
                                    )
                                  : SliverToBoxAdapter(),
                              state.notActiveTransactions.length != 0
                                  ? SliverToBoxAdapter(
                                      child: Text(
                                        AppLocalizations.of(
                                          context,
                                        )!.notActiveTransactions.toUpperCase(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall!
                                            .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSurface
                                                  .withValues(alpha: 0.4),
                                              fontWeight: FontWeight.w700,
                                            ),
                                      ),
                                    )
                                  : SliverToBoxAdapter(),
                              state.notActiveTransactions.length != 0
                                  ? SliverToBoxAdapter(
                                      child: addVerticalSpace(15),
                                    )
                                  : SliverToBoxAdapter(),
                              SliverList.separated(
                                itemCount: state.notActiveTransactions.length,
                                separatorBuilder: (context, index) {
                                  return addVerticalSpace(20);
                                },
                                itemBuilder: (context, index) =>
                                    CurrentTransactionElement(
                                      transaction:
                                          state.notActiveTransactions[index],
                                    ),
                              ),
                              SliverToBoxAdapter(child: addVerticalSpace(150)),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
                  if (state is LoadTransactionsStateLoading) {
                    return Center(child: CustomLoadingAnimationElement());
                  }
                  return Container();
                },
              );
            },
          );
        },
      ),
    );
  }
}
