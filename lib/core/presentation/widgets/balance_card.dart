import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:parentia/features/transaction/application/blocs/load_transactions/load_transactions_bloc.dart';
import 'package:parentia/l10n/app_localizations.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    final euroFormat = NumberFormat.simpleCurrency(locale: 'de_DE', name: '€');

    return BlocBuilder<LoadTransactionsBloc, LoadTransactionsState>(
      builder: (context, state) {
        if (state is LoadTransactionsStateSuccess) {
          return Container(
            width: double.infinity,
            height: 175,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(20),
                  child: Image.asset(
                    "assets/images/balance_card_background.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 25,
                  left: 25,
                  child: Text(
                    euroFormat.format(state.currentBalance.getOrCrash()),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 25,
                  child: Text(
                    AppLocalizations.of(context)!.balance.toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        return Container();
      },
    );
  }
}
