import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:parentia/core/get_it.dart';
import 'package:parentia/core/presentation/screens/home_screen.dart';
import 'package:parentia/core/presentation/screens/main_scaffold.dart';
import 'package:parentia/core/presentation/screens/more_screen.dart';
import 'package:parentia/core/presentation/screens/qr_code_scanner.dart';
import 'package:parentia/features/account/presentation/screens/account_screen.dart';
import 'package:parentia/features/account/presentation/screens/create_account_screen.dart';
import 'package:parentia/features/account/presentation/screens/settings_screen.dart';
import 'package:parentia/features/account/presentation/screens/meetup_history_screen.dart';
import 'package:parentia/features/account/presentation/screens/verify_email_screen.dart';
import 'package:parentia/features/auth/application/forgot_password/forgot_password_bloc.dart';
import 'package:parentia/features/auth/application/register/register_bloc.dart';
import 'package:parentia/features/auth/application/signin/signin_bloc.dart';
import 'package:parentia/features/auth/presentation/screens/forgot_password_screen.dart';
import 'package:parentia/features/auth/presentation/screens/signin_screen.dart';
import 'package:parentia/features/auth/presentation/screens/signup_screen.dart';
import 'package:parentia/features/auth/presentation/screens/initial_screen.dart';
import 'package:parentia/main.dart';

final GlobalKey<NavigatorState> globalNavigatorKey =
    GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> bottomNavigationBarNavigatorKey =
    GlobalKey<NavigatorState>();

GoRouter configureGoRouter(InitialUserStatus status) {
  String initialLocation = '';
  switch (status) {
    case InitialUserStatus.noUser:
      initialLocation = '/initial';
      break;
    case InitialUserStatus.userNoAccount:
      initialLocation = '/create-user';
      break;
    case InitialUserStatus.userWithAccount:
      initialLocation = '/home';
      break;
  }

  final router_config = GoRouter(
    navigatorKey: globalNavigatorKey,
    debugLogDiagnostics: true,
    initialLocation: initialLocation,
    routes: [
      GoRoute(
        path: '/initial',
        builder: (context, state) => InitialScreen(),
      ),
      GoRoute(
        path: '/signin',
        builder: (context, state) => BlocProvider(
          create: (context) => locator<SigninBloc>(),
          child: SigninScreen(),
        ),
      ),
      GoRoute(
        path: '/forgot-password',
        builder: (context, state) => BlocProvider(
          create: (context) => locator<ForgotPasswordBloc>(),
          child: ForgotPasswordScreen(),
        ),
      ),
      GoRoute(
        path: '/qr-code-scanner',
        builder: (context, state) => QrCodeScannerScreen(),
      ),
      GoRoute(
        path: '/signup',
        builder: (context, state) => BlocProvider(
          create: (context) => locator<RegisterBloc>(),
          child: SignupScreen(),
        ),
      ),
      GoRoute(
        path: '/verify-email',
        builder: (context, state) => VerifyEmailScreen(),
      ),
      GoRoute(
        path: '/create-user',
        builder: (context, state) => CreateAccountScreen(),
      ),
      ShellRoute(
        navigatorKey: bottomNavigationBarNavigatorKey,
        builder: (context, state, child) =>
            MainNavigationScaffold(child: child),
        routes: [
          GoRoute(
            path: '/home',
            pageBuilder: (context, state) {
              final code = state.uri.queryParameters['code'];
              return NoTransitionPage(
                key: state.pageKey,
                child: HomeScreen(meetupPartnerUid: code),
              );
            },
          ),
          GoRoute(
            path: '/more',
            pageBuilder: (context, state) {
              return NoTransitionPage(
                key: state.pageKey,
                child: MoreScreen(),
              );
            },
          ),
        ],
      ),
      GoRoute(
        path: '/meetup-history',
        builder: (context, state) => MeetupHistoryScreen(),
      ),
      GoRoute(
        path: '/account',
        builder: (context, state) => AccountScreen(),
      ),
      GoRoute(
        path: '/settings',
        builder: (context, state) => SettingsScreen(),
      ),
    ],
  );
  return router_config;
}