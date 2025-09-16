import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:parentia/core/presentation/widgets/crashlytics_analytics_alert_dialog.dart';
import 'package:parentia/core/presentation/widgets/custom_button.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/l10n/app_localizations.dart';
import 'package:parentia/main.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ConsentWrapper(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/images/splash_background.png',
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsetsGeometry.all(20),
                child: Column(
                  children: [
                    CustomButton(
                      onPressed: () {
                        GoRouter.of(context).push('/signin');
                      },
                      text: AppLocalizations.of(context)!.login.toUpperCase(),
                      width: double.infinity,
                      isPrimaryButton: true,
                    ),
                    addVerticalSpace(10),
                    CustomButton(
                      onPressed: () {
                        GoRouter.of(context).push('/signup');
                      },
                      text: AppLocalizations.of(context)!.register.toUpperCase(),
                      width: double.infinity,
                    ),
                    addVerticalSpace(10),
                    CustomClickedElement(
                      child: Text(
                        AppLocalizations.of(context)!.dataPrivacySettings,
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return CrashlyticsAnalyticsAlertDialog(
                              consentService: consentService,
                            );
                          },
                        );
                      },
                    ),
                    addVerticalSpace(20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
