

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ConsentService {

  static const String _analyticsConsentKey = 'analytics_consent_given';
  static const String _crashlyticsConsentKey = 'crashlytics_consent_given';
  static const String _consentAskedKey = 'consent_has_been_asked';

  Future<void> saveConsent(
      {required bool analytics, required bool crashlytics}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_analyticsConsentKey, analytics);
    await prefs.setBool(_crashlyticsConsentKey, crashlytics);
    await prefs.setBool(_consentAskedKey, true);

    await FirebaseAnalytics.instance
        .setAnalyticsCollectionEnabled(analytics);
    await FirebaseCrashlytics.instance
        .setCrashlyticsCollectionEnabled(crashlytics);
  }

  Future<bool> isAnalyticsAllowed() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_analyticsConsentKey) ?? false;
  }

  Future<bool> isCrashlyticsAllowed() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_crashlyticsConsentKey) ?? false;
  }

  Future<bool> hasConsentBeenAsked() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_consentAskedKey) ?? false;
  }
  
}