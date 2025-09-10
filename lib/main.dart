import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:parentia/core/get_it.dart';
import 'package:parentia/core/push_notifications_helpers.dart';
import 'package:parentia/core/theming.dart';
import 'package:parentia/features/account/application/blocs/current_user/current_user_bloc.dart';
import 'firebase_options.dart';
import 'l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  //FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  setup();
  await dotenv.load(fileName: ".env");
  await NotificationService().initialize();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GoRouterWrapperWidget();
  }
}

class GoRouterWrapperWidget extends StatelessWidget {
  const GoRouterWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final router = locator<GoRouter>();
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
            builder: DevicePreview.appBuilder,
            locale: DevicePreview.locale(context),
            useInheritedMediaQuery: true,
          ),
        );
      },
    );
  }
}