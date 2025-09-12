import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:parentia/core/consent_service.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/l10n/app_localizations.dart';
import 'package:parentia/main.dart';

class CrashlyticsAnalyticsAlertDialog extends StatefulWidget {
  final ConsentService consentService;

  const CrashlyticsAnalyticsAlertDialog({
    super.key,
    required this.consentService,
  });

  @override
  State<CrashlyticsAnalyticsAlertDialog> createState() =>
      _CrashlyticsAnalyticsAlertDialogState();
}

class _CrashlyticsAnalyticsAlertDialogState
    extends State<CrashlyticsAnalyticsAlertDialog> {
  bool _analyticsEnabled = true;
  bool _crashlyticsEnabled = true;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadInitialConsentStatus();
  }

  Future<void> _loadInitialConsentStatus() async {
    // Lade die gespeicherten Einstellungen
    final analyticsAllowed = await widget.consentService.isAnalyticsAllowed();
    final crashlyticsAllowed = await widget.consentService
        .isCrashlyticsAllowed();
    final hasConsentBeenAsked = await widget.consentService
        .hasConsentBeenAsked();

    if (hasConsentBeenAsked == false) {
      setState(() {
        _analyticsEnabled = true;
        _crashlyticsEnabled = true;
        _isLoading = false;
      });
    }

    if (mounted) {
      setState(() {
        _analyticsEnabled = analyticsAllowed;
        _crashlyticsEnabled = crashlyticsAllowed;
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(AppLocalizations.of(context)!.dataPrivacy),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              AppLocalizations.of(context)!.dataPrivacyDescription,
            ),
            addVerticalSpace(10),
            SwitchListTile(
              title: Text(AppLocalizations.of(context)!.usageAnalysis),
              subtitle: Text(
                AppLocalizations.of(context)!.usageAnalysisDescription,
                style: TextStyle(fontSize: 12),
              ),
              value: _analyticsEnabled,
              onChanged: _isLoading
                  ? null
                  : (bool value) {
                      setState(() {
                        _analyticsEnabled = value;
                      });
                    },
            ),
            SwitchListTile(
              title: Text(AppLocalizations.of(context)!.errorReports),
              subtitle: Text(
                AppLocalizations.of(context)!.errorReportsDescription,
                style: TextStyle(fontSize: 12),
              ),
              value: _crashlyticsEnabled,
              onChanged: _isLoading
                  ? null
                  : (bool value) {
                      setState(() {
                        _crashlyticsEnabled = value;
                      });
                    },
            ),
          ],
        ),
      ),
      actions: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomClickedElement(
              child: Text(
                AppLocalizations.of(context)!.rejectAll,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Theme.of(
                    context,
                  ).colorScheme.onSurface.withValues(alpha: 0.7),
                ),
              ),
              onPressed: () async {
                await widget.consentService.saveConsent(
                  analytics: false,
                  crashlytics: false,
                );
                await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(
                  false,
                );
                await FirebaseCrashlytics.instance
                    .setCrashlyticsCollectionEnabled(false);
                Navigator.of(context).pop();
              },
            ),
            addHorizontalSpace(10),
            CustomClickedElement(
              child: Text(
                AppLocalizations.of(context)!.saveSelected,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              onPressed: () async {
                await widget.consentService.saveConsent(
                  analytics: _analyticsEnabled,
                  crashlytics: _crashlyticsEnabled,
                );
                await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(
                  _analyticsEnabled,
                );
                await FirebaseCrashlytics.instance
                    .setCrashlyticsCollectionEnabled(_crashlyticsEnabled);
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ],
    );
  }
}
