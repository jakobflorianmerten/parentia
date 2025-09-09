import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:parentia/core/get_it.dart';
import 'package:parentia/features/account/application/blocs/current_user/current_user_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<CurrentUserBloc>()..add(CurrentUserEvent.checkCurrentUser()),
      child: Builder(
        builder: (context) {
          return BlocListener<CurrentUserBloc, CurrentUserState>(
            listener: (context, state) {
              if (state is CurrentUserStateNotAuthenticated) {
                GoRouter.of(context).go('/initial');
              }
              if (state is CurrentUserStateAuthenticateNoAccount) {
                GoRouter.of(context).go('/create-user');
              }
              if (state is CurrentUserStateAuthenticateWithAccount) {
                GoRouter.of(context).go('/home');
              }
            },
            child: Scaffold(
              body: Center(child: Text("Parentia")),
            ),
          );
        }
      ),
    );
  }
}
