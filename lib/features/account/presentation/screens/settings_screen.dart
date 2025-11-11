import 'package:flutter/material.dart';
import 'package:parentia/core/presentation/widgets/crashlytics_analytics_alert_dialog.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/core/presentation/widgets/navigate_to_widget.dart';
import 'package:parentia/features/account/presentation/delegates/sliding_title_header_delegate.dart';
import 'package:parentia/l10n/app_localizations.dart';
import 'package:parentia/main.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsetsGeometry.all(20),
              sliver: SliverPersistentHeader(
                floating: true,
                delegate: SlidingTitleHeaderDelegate(
                  title: AppLocalizations.of(context)!.settings,
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
              sliver: SliverList.list(
                children: [
                  NavigatoTWidget(
                    leadingWidget: Text(
                      AppLocalizations.of(context)!.dataPrivacySettings,
                      style: Theme.of(context).textTheme.displayMedium,
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
                  addVerticalSpace(15),
                  NavigatoTWidget(
                    leadingWidget: Text(
                      AppLocalizations.of(context)!.privacyPolicy,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    onPressed: () async {
                      final url = Uri.parse(
                        'https://jakobflorianmerten.github.io/parentia/PRIVACY_POLICY.html',
                      );
                      if (await canLaunchUrl(url)) {
                        await launchUrl(
                          url,
                          mode: LaunchMode.inAppWebView,
                        );
                      }
                    },
                  ),
                  addVerticalSpace(15),
                  NavigatoTWidget(
                    leadingWidget: Text(
                      AppLocalizations.of(context)!.termsOfUse,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    onPressed: () async {
                      final url = Uri.parse(
                        'https://jakobflorianmerten.github.io/parentia/TERMS_OF_USE.html',
                      );
                      if (await canLaunchUrl(url)) {
                        await launchUrl(
                          url,
                          mode: LaunchMode.inAppWebView,
                        );
                      }
                    },
                  ),
                  addVerticalSpace(15),
                  NavigatoTWidget(
                    leadingWidget: Text(
                      AppLocalizations.of(context)!.impressum,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    onPressed: () async {
                      final url = Uri.parse(
                        'https://jakobflorianmerten.github.io/parentia/IMPRESSUM.html',
                      );
                      if (await canLaunchUrl(url)) {
                        await launchUrl(
                          url,
                          mode: LaunchMode.inAppWebView,
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
