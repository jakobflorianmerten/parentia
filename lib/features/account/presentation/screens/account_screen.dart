import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parentia/core/get_it.dart';
import 'package:parentia/features/account/application/blocs/delete_user/bloc/delete_user_bloc.dart';
import 'package:parentia/features/account/presentation/delegates/sliding_title_header_delegate.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/features/auth/presentation/widgets/delete_account_button.dart';
import 'package:parentia/features/auth/presentation/widgets/signout_button.dart';
import 'package:parentia/l10n/app_localizations.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<DeleteUserBloc>(),
      child: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: EdgeInsetsGeometry.all(20),
                sliver: SliverPersistentHeader(
                  floating: true,
                  delegate: SlidingTitleHeaderDelegate(
                    title: AppLocalizations.of(context)!.account,
                  ),
                ),
              ),
              SliverPadding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
                sliver: SliverList.list(
                  children: [
                    // addVerticalSpace(40),
                    SignoutButton(),
                    addVerticalSpace(15),
                    DeleteAccountButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
