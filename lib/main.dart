import 'dart:ui';

import 'package:device_preview/device_preview.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'package:parentia/core/consent_service.dart';
import 'package:parentia/core/get_it.dart';
import 'package:parentia/core/go_router.dart';
import 'package:parentia/core/presentation/widgets/crashlytics_analytics_alert_dialog.dart';
import 'package:parentia/core/push_notifications_helpers.dart';
import 'package:parentia/core/theming.dart';
import 'package:parentia/custom_toastmessages/message_service.dart';
import 'package:parentia/features/account/application/blocs/current_user/current_user_bloc.dart';
import 'package:parentia/features/account/domain/repositories/user_repository.dart';
import 'package:parentia/features/account/infrastructure/repositories/user_repository.dart';
import 'package:parentia/features/auth/domain/entities/auth_object.dart';
import 'package:parentia/features/auth/domain/repositories/auth_repository.dart';
import 'package:parentia/features/auth/infrastructure/repositories/auth_repository.dart';
import 'firebase_options.dart';
import 'l10n/app_localizations.dart';

final ConsentService consentService = ConsentService();

enum InitialUserStatus {
  noUser,
  userNoAccount,
  userWithAccount,
}

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  final userStatus = await initlization(null);
  FlutterNativeSplash.remove();
  
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      // enabled: false,
      builder: (context) => MyApp(status: userStatus),
    ),
  );
}

Future<InitialUserStatus> initlization(BuildContext? context) async {
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setup();

  final analyticsAllowed = await consentService.isAnalyticsAllowed();
  final crashlyticsAllowed = await consentService.isCrashlyticsAllowed();

  await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(
    analyticsAllowed,
  );
  await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(
    crashlyticsAllowed,
  );

  if (crashlyticsAllowed) {
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };
  }

  await dotenv.load(fileName: ".env");
  await NotificationService().initialize();

  // fetch the current user
  final IAuthRepository _authRepo = locator<ImplAuthRepository>();
  final UserRepository _userRepo = locator<UserRepositoryImpl>();
  final authResult = await _authRepo.getSignedInUser();
  if (authResult.isNone()) {
    return InitialUserStatus.noUser;
  }

  final AuthObject authObject = authResult.getOrElse(() => throw Error());
  final userResult = await _userRepo.loadUserById(authObject.uid);
  return userResult.fold(
    (failure) => InitialUserStatus.userNoAccount,
    (user) => InitialUserStatus.userWithAccount,
  );
}

class MyApp extends StatelessWidget {
  final InitialUserStatus status;
  const MyApp({super.key, required this.status});
  @override
  Widget build(BuildContext context) {
    return GoRouterWrapperWidget(status: status);
  }
}

class GoRouterWrapperWidget extends StatefulWidget {
  final InitialUserStatus status;
  const GoRouterWrapperWidget({super.key, required this.status});

  @override
  State<GoRouterWrapperWidget> createState() => _GoRouterWrapperWidgetState();
}

class _GoRouterWrapperWidgetState extends State<GoRouterWrapperWidget> {
  static GoRouter? _router;

  @override
  void initState() {
    super.initState();
    if (_router == null) {
      _router = configureGoRouter(widget.status);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final router = _router;
        return BlocProvider(
          create: (context) => locator<CurrentUserBloc>(),
          child: MaterialApp.router(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: [
              Locale('en'),
              Locale('de'),
            ],
            theme: darkTheme,
            routerConfig: router,
            builder: (context, child) {
              return DevicePreview.appBuilder(context, child);
            },
            locale: DevicePreview.locale(context),
          ),
        );
      },
    );
  }
}

class ConsentWrapper extends StatefulWidget {
  final Widget? child;

  const ConsentWrapper({super.key, this.child});

  @override
  State<ConsentWrapper> createState() => _ConsentWrapperState();
}

class _ConsentWrapperState extends State<ConsentWrapper> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _handleConsentAndInitialize();
    });
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
  }

  @override
  Widget build(BuildContext context) {
    return widget.child ?? Container();
  }
}
