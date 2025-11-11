import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:parentia/core/presentation/widgets/crashlytics_analytics_alert_dialog.dart';
import 'package:parentia/features/account/application/blocs/current_user/current_user_bloc.dart';
import 'package:parentia/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _handleConsentAndInitialize(),
    );
  }

  Future<void> _handleConsentAndInitialize() async {
    final hasBeenAsked = await consentService.hasConsentBeenAsked();

    if (!hasBeenAsked && context.mounted) {
      await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return CrashlyticsAnalyticsAlertDialog(
            consentService: consentService,
          );
        },
      );
    }
    // if (context.mounted) {
    //   BlocProvider.of<CurrentUserBloc>(
    //     context,
    //   ).add(CurrentUserEvent.initializeCurrentUser());
    //         BlocProvider.of<CurrentUserBloc>(
    //     context,
    //   ).add(CurrentUserEvent.checkCurrentUser());
    // }
  }

  @override
  Widget build(BuildContext context) {
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
              fit: BoxFit.fitWidth,
            ),
            Center(
              child: Image.asset(
                'assets/images/logo.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
