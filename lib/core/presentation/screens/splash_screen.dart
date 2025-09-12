import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:parentia/features/account/application/blocs/current_user/current_user_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CurrentUserBloc>(context).add(CurrentUserEvent.checkCurrentUser());
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
        body: Stack(
          children: [
            Image.asset(
                'assets/images/splash_background.png',
                width: double.infinity, 
                fit: BoxFit.fitWidth
              ),
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              )
          ],
        ),
      ),
    );
  }
}
