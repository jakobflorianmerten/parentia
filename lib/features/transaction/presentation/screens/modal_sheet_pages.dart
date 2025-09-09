import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parentia/core/get_it.dart';
import 'package:parentia/features/transaction/application/blocs/new_transaction_bloc/new_transaction_bloc.dart';
import 'package:parentia/features/transaction/presentation/widgets/select_date_widget.dart';
import 'package:parentia/features/transaction/presentation/widgets/select_price_widget.dart';
import 'package:parentia/features/transaction/presentation/widgets/search_user_widget.dart';
import 'package:parentia/features/transaction/presentation/widgets/transaction_summary_widget.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

SliverWoltModalSheetPage page1(
  BuildContext modalSheetContext,
  TextTheme textTheme,
) {
  return WoltModalSheetPage(
    backgroundColor: Theme.of(modalSheetContext).colorScheme.surface,
    surfaceTintColor: Theme.of(modalSheetContext).colorScheme.surface,
    child: BlocProvider(
      create: (context) => locator<NewTransactionBloc>(),
      child: SearchUserWidget(),
    ),
  );
}

SliverWoltModalSheetPage page2(
  BuildContext modalSheetContext,
  TextTheme textTheme,
) {
  return WoltModalSheetPage(
    backgroundColor: Theme.of(modalSheetContext).colorScheme.surface,
    surfaceTintColor: Theme.of(modalSheetContext).colorScheme.surface,
    child: BlocProvider(
      create: (context) => locator<NewTransactionBloc>(),
      child: SelectPriceWidget(),
    ),
  );
}

SliverWoltModalSheetPage page3(
  BuildContext modalSheetContext,
  TextTheme textTheme,
) {
  return WoltModalSheetPage(
    backgroundColor: Theme.of(modalSheetContext).colorScheme.surface,
    surfaceTintColor: Theme.of(modalSheetContext).colorScheme.surface,
    child: BlocProvider(
      create: (context) => locator<NewTransactionBloc>(),
      child: SelectDateWidget(),
    ),
  );
}

SliverWoltModalSheetPage page4(
  BuildContext modalSheetContext,
  TextTheme textTheme,
) {
  return WoltModalSheetPage(
    backgroundColor: Theme.of(modalSheetContext).colorScheme.surface,
    surfaceTintColor: Theme.of(modalSheetContext).colorScheme.surface,
    child: BlocProvider(
      create: (context) => locator<NewTransactionBloc>(),
      child: TransactionSummaryWidget(),
    ),
  );
}
