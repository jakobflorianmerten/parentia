

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';
import 'package:parentia/features/account/application/blocs/current_user/current_user_bloc.dart';
import 'package:parentia/l10n/app_localizations.dart';

class SignoutButton extends StatelessWidget {
  const SignoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomClickedElement(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer, 
          borderRadius: BorderRadius.circular(15)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(AppLocalizations.of(context)!.logout, style: Theme.of(context).textTheme.displayMedium,), 
            Icon(Icons.logout, size: 20,)
          ],
        )
      ),
      onPressed: () {
        BlocProvider.of<CurrentUserBloc>(context).add(CurrentUserEvent.signOutCurrentUser());
      }
    );
  }
}