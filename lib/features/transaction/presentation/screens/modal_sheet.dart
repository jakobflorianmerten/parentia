import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parentia/core/get_it.dart';
import 'package:parentia/features/account/application/blocs/change_current_user/change_current_user_bloc.dart';
import 'package:parentia/features/account/domain/entities/user.dart';
import 'package:parentia/features/account/presentation/screens/profile_screen.dart';
import 'package:parentia/features/account/presentation/screens/qr_code_screen.dart';
import 'package:parentia/features/account/presentation/widgets/reauthenticate_modal.dart';
import 'package:parentia/features/transaction/application/blocs/new_transaction_bloc/new_transaction_bloc.dart';
import 'package:parentia/features/transaction/application/blocs/transaction/transaction_bloc.dart';
import 'package:parentia/features/transaction/domain/entities/transaction.dart';
import 'package:parentia/features/transaction/presentation/screens/transaction_detail_screen.dart';
import 'package:parentia/features/transaction/presentation/widgets/search_user_widget.dart';
import 'package:parentia/features/transaction/presentation/widgets/select_date_widget.dart';
import 'package:parentia/features/transaction/presentation/widgets/select_price_widget.dart';
import 'package:parentia/features/transaction/presentation/widgets/transaction_summary_widget.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

ValueNotifier<int> modalSheetPageIndexNotifier = ValueNotifier<int>(0);

void showTransactionWoltModalSheet(
  BuildContext context, {
  User? user,
}) {
  // Einmalige Bloc-Instanz
  final bloc = locator<NewTransactionBloc>();

  if (user != null) {
    bloc.add(NewTransactionEvent.selectedTransactionPartner(user));
  }

  modalSheetPageIndexNotifier = ValueNotifier<int>(user != null ? 1 : 0);

  WoltModalSheet.show<void>(
    context: context,

    pageIndexNotifier: modalSheetPageIndexNotifier,
    pageListBuilder: (modalSheetContext) {
      final textTheme = Theme.of(context).textTheme;
      return [
        _buildPageWithBloc(
          modalSheetContext,
          textTheme,
          bloc,
          SearchUserWidget(),
        ),
        _buildPageWithBloc(
          modalSheetContext,
          textTheme,
          bloc,
          SelectPriceWidget(),
        ),
        _buildPageWithBloc(
          modalSheetContext,
          textTheme,
          bloc,
          SelectDateWidget(),
        ),
        _buildPageWithBloc(
          modalSheetContext,
          textTheme,
          bloc,
          TransactionSummaryWidget(),
        ),
      ];
    },
    modalTypeBuilder: (context) {
      return const WoltBottomSheetType(
        closeProgressThreshold: 0.8,
        dismissDirection: WoltModalDismissDirection.down,
      );
    },
  );
}

void showReauthenticateModalSheet(BuildContext context) {
  WoltModalSheet.show<void>(
    context: context,
    pageListBuilder: (BuildContext context) {
      return [
        WoltModalSheetPage(
          child: ReauthenticateModalWidget(),
          backgroundColor: Theme.of(context).colorScheme.surface,
          surfaceTintColor: Theme.of(context).colorScheme.surface,
        ),
      ];
    },
  );
}

// Hilfsfunktion für eine einfache Seite
SliverWoltModalSheetPage _buildPageWithBloc(
  BuildContext ctx,
  TextTheme textTheme,
  NewTransactionBloc bloc,
  Widget content,
) {
  return WoltModalSheetPage(
    backgroundColor: Theme.of(ctx).colorScheme.surface,
    surfaceTintColor: Theme.of(ctx).colorScheme.surface,
    child: BlocProvider.value(
      value: bloc,
      child: content,
    ),
  );
}

void showProfileModalBottomSheet(BuildContext context) {
  WoltModalSheet.show<void>(
    context: context,
    useRootNavigator: true,
    enableDrag: true,
    barrierDismissible: true,
    pageListBuilder: (modalSheetContext) {
      return [
        WoltModalSheetPage(
          child: BlocProvider(
            create: (context) => locator<ChangeCurrentUserBloc>(),
            child: ProfileScreen(),
          ),
          backgroundColor: Theme.of(context).colorScheme.surface,
          surfaceTintColor: Theme.of(context).colorScheme.surface,
        ),
      ];
    },
    modalTypeBuilder: (context) {
      return const WoltBottomSheetType(
        closeProgressThreshold: 0.8,
        dismissDirection: WoltModalDismissDirection.down,
      );
    },
  );
}

void showTransactionModalBottomSheet(
  BuildContext context,
  Transaction transaction,
) {
  final transactionBloc = BlocProvider.of<TransactionBloc>(context);
  WoltModalSheet.show(
    context: context,
    useRootNavigator: true,
    pageListBuilder: (modalSheetContext) {
      return [
        WoltModalSheetPage(
          child: BlocProvider.value(
            value: transactionBloc,
            child: TransactionDetailScreen(transaction: transaction),
          ),
          backgroundColor: Theme.of(context).colorScheme.surface,
          surfaceTintColor: Theme.of(context).colorScheme.surface,
        ),
      ];
    },
    modalTypeBuilder: (context) {
      return const WoltBottomSheetType(
        closeProgressThreshold: 0.8,
        dismissDirection: WoltModalDismissDirection.down,
      );
    },
  );
}

void showQrCodeModalBottomSheet(BuildContext context) {
  WoltModalSheet.show(
    context: context,
    useRootNavigator: true,
    pageListBuilder: (modalSheetContext) {
      return [
        WoltModalSheetPage(
          child: QrCodeScreen(),
          backgroundColor: Theme.of(context).colorScheme.surface,
          surfaceTintColor: Theme.of(context).colorScheme.surface,
        ),
      ];
    },
    modalTypeBuilder: (context) {
      return const WoltBottomSheetType(
        closeProgressThreshold: 0.8,
        dismissDirection: WoltModalDismissDirection.down,
      );
    },
  );
}
