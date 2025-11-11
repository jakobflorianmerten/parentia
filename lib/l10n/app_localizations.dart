import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en'),
  ];

  /// No description provided for @meetupHistory.
  ///
  /// In en, this message translates to:
  /// **'Meetup History'**
  String get meetupHistory;

  /// No description provided for @noMeetups.
  ///
  /// In en, this message translates to:
  /// **'No meetups yet.'**
  String get noMeetups;

  /// No description provided for @noCurrentMeetups.
  ///
  /// In en, this message translates to:
  /// **'You currently have no meetups.'**
  String get noCurrentMeetups;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @meetupDate.
  ///
  /// In en, this message translates to:
  /// **'Meetup Date'**
  String get meetupDate;

  /// No description provided for @paymentDate.
  ///
  /// In en, this message translates to:
  /// **'Meetup Date'**
  String get paymentDate;

  /// No description provided for @iacceptthe.
  ///
  /// In en, this message translates to:
  /// **'I accept the '**
  String get iacceptthe;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @andThe.
  ///
  /// In en, this message translates to:
  /// **' and the '**
  String get andThe;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @termsOfUse.
  ///
  /// In en, this message translates to:
  /// **'Terms of use'**
  String get termsOfUse;

  /// No description provided for @impressum.
  ///
  /// In en, this message translates to:
  /// **'Impressum'**
  String get impressum;

  /// No description provided for @meetupDateDescription.
  ///
  /// In en, this message translates to:
  /// **'Select the meetup date. Your meetup partner will be reminded of the date.'**
  String get meetupDateDescription;

  /// No description provided for @paymentDateDescription.
  ///
  /// In en, this message translates to:
  /// **'Select the meetup date. Your meetup partner will be reminded of the date.'**
  String get paymentDateDescription;

  /// No description provided for @person.
  ///
  /// In en, this message translates to:
  /// **'Person'**
  String get person;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @enterDescription.
  ///
  /// In en, this message translates to:
  /// **'Enter description for this meetup...'**
  String get enterDescription;

  /// No description provided for @minimum10Characters.
  ///
  /// In en, this message translates to:
  /// **'Minimum 10 characters'**
  String get minimum10Characters;

  /// No description provided for @amount.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get amount;

  /// No description provided for @amount_in_euros.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get amount_in_euros;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @dataPrivacy.
  ///
  /// In en, this message translates to:
  /// **'Data Privacy'**
  String get dataPrivacy;

  /// No description provided for @dataPrivacyDescription.
  ///
  /// In en, this message translates to:
  /// **'We use Firebase Analytics and Crashlytics to understand app usage and fix bugs. May we collect anonymized data to improve the app?'**
  String get dataPrivacyDescription;

  /// No description provided for @usageAnalysis.
  ///
  /// In en, this message translates to:
  /// **'Usage analysis'**
  String get usageAnalysis;

  /// No description provided for @usageAnalysisDescription.
  ///
  /// In en, this message translates to:
  /// **'Helps us understand how the app is used so we can improve it.'**
  String get usageAnalysisDescription;

  /// No description provided for @errorReports.
  ///
  /// In en, this message translates to:
  /// **'Error reports'**
  String get errorReports;

  /// No description provided for @errorReportsDescription.
  ///
  /// In en, this message translates to:
  /// **'Automatically sends reports when crashes occur so that we can fix bugs.'**
  String get errorReportsDescription;

  /// No description provided for @rejectAll.
  ///
  /// In en, this message translates to:
  /// **'Reject All'**
  String get rejectAll;

  /// No description provided for @saveSelected.
  ///
  /// In en, this message translates to:
  /// **'Save Selected'**
  String get saveSelected;

  /// No description provided for @dataPrivacySettings.
  ///
  /// In en, this message translates to:
  /// **'Data Privacy Settings'**
  String get dataPrivacySettings;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @deleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get deleteAccount;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get fullName;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email address'**
  String get email;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @balance.
  ///
  /// In en, this message translates to:
  /// **'Balance'**
  String get balance;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get login;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get register;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @verifyEmail.
  ///
  /// In en, this message translates to:
  /// **'Verify Email'**
  String get verifyEmail;

  /// No description provided for @verifyEmailDescription.
  ///
  /// In en, this message translates to:
  /// **'We have sent a verification code to your email address. Please enter it here.'**
  String get verifyEmailDescription;

  /// No description provided for @verificationCode.
  ///
  /// In en, this message translates to:
  /// **'Verification Code'**
  String get verificationCode;

  /// No description provided for @resendVerificationEmail.
  ///
  /// In en, this message translates to:
  /// **'Resend Email'**
  String get resendVerificationEmail;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgotPassword;

  /// No description provided for @resetPassword.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetPassword;

  /// No description provided for @reauthenticate.
  ///
  /// In en, this message translates to:
  /// **'Reauthenticate'**
  String get reauthenticate;

  /// No description provided for @activeMeetups.
  ///
  /// In en, this message translates to:
  /// **'Active Meetups'**
  String get activeMeetups;

  /// No description provided for @notActiveMeetups.
  ///
  /// In en, this message translates to:
  /// **'Meetups not yet confirmed'**
  String get notActiveMeetups;

  /// No description provided for @accept.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get accept;

  /// No description provided for @reject.
  ///
  /// In en, this message translates to:
  /// **'Reject'**
  String get reject;

  /// No description provided for @initiator.
  ///
  /// In en, this message translates to:
  /// **'Initiator'**
  String get initiator;

  /// No description provided for @participant.
  ///
  /// In en, this message translates to:
  /// **'Participant'**
  String get participant;

  /// No description provided for @creditor.
  ///
  /// In en, this message translates to:
  /// **'Initiator'**
  String get creditor;

  /// No description provided for @debtor.
  ///
  /// In en, this message translates to:
  /// **'Participant'**
  String get debtor;

  /// No description provided for @reauthenticateDescription.
  ///
  /// In en, this message translates to:
  /// **'To ensure that only you can make changes to your account, we need to verify your identity before deleting your account.'**
  String get reauthenticateDescription;

  /// No description provided for @meetup_status_pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get meetup_status_pending;

  /// No description provided for @meetup_status_active.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get meetup_status_active;

  /// No description provided for @meetup_status_rejected.
  ///
  /// In en, this message translates to:
  /// **'Rejected'**
  String get meetup_status_rejected;

  /// No description provided for @meetup_status_completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get meetup_status_completed;

  /// No description provided for @meetup_status_pending_changes.
  ///
  /// In en, this message translates to:
  /// **'Changes Pending'**
  String get meetup_status_pending_changes;

  /// No description provided for @error_defaultMessageTitle.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error_defaultMessageTitle;

  /// No description provided for @error_defaultMessageDescription.
  ///
  /// In en, this message translates to:
  /// **'An unknown error has occurred. Please try again later.'**
  String get error_defaultMessageDescription;

  /// No description provided for @error_meetupCreateTitle.
  ///
  /// In en, this message translates to:
  /// **'Error creating meetup'**
  String get error_meetupCreateTitle;

  /// No description provided for @error_meetupCreateDescription.
  ///
  /// In en, this message translates to:
  /// **'The meetup could not be created. Please try again later.'**
  String get error_meetupCreateDescription;

  /// No description provided for @error_createAccountUsernameAlreadyExistsTitle.
  ///
  /// In en, this message translates to:
  /// **'Username already exists.'**
  String get error_createAccountUsernameAlreadyExistsTitle;

  /// No description provided for @error_createAccountUsernameAlreadyExistsDescription.
  ///
  /// In en, this message translates to:
  /// **'The username already exists and cannot be assigned more than once. Please change it.'**
  String get error_createAccountUsernameAlreadyExistsDescription;

  /// No description provided for @error_signinInvalidEmailAndPasswordTitle.
  ///
  /// In en, this message translates to:
  /// **'Invalid password and email match'**
  String get error_signinInvalidEmailAndPasswordTitle;

  /// No description provided for @error_signinInvalidEmailAndPasswordDescription.
  ///
  /// In en, this message translates to:
  /// **'The provided email and password do not match.'**
  String get error_signinInvalidEmailAndPasswordDescription;

  /// No description provided for @error_signinUserAlreadySignedInOnDifferentDeviceTitle.
  ///
  /// In en, this message translates to:
  /// **'The user is already logged in on another device.'**
  String get error_signinUserAlreadySignedInOnDifferentDeviceTitle;

  /// No description provided for @error_signinUserAlreadySignedInOnDifferentDeviceDescription.
  ///
  /// In en, this message translates to:
  /// **'The user is already logged in on another device. A user may only be logged in on one device.'**
  String get error_signinUserAlreadySignedInOnDifferentDeviceDescription;

  /// No description provided for @error_signupEmailAlreadyInUseTitle.
  ///
  /// In en, this message translates to:
  /// **'Email already in use'**
  String get error_signupEmailAlreadyInUseTitle;

  /// No description provided for @error_signupEmailAlreadyInUseDescription.
  ///
  /// In en, this message translates to:
  /// **'The provided email is already attached to an account.'**
  String get error_signupEmailAlreadyInUseDescription;

  /// No description provided for @error_invalidEmailMessageTitle.
  ///
  /// In en, this message translates to:
  /// **'Invalid email address'**
  String get error_invalidEmailMessageTitle;

  /// No description provided for @error_invalidEmailMessageDescription.
  ///
  /// In en, this message translates to:
  /// **'The email address is invalid. Try using a different email address.'**
  String get error_invalidEmailMessageDescription;

  /// No description provided for @error_reauthenticateButNoUserLoggedInTitle.
  ///
  /// In en, this message translates to:
  /// **'No user is logged in.'**
  String get error_reauthenticateButNoUserLoggedInTitle;

  /// No description provided for @error_reauthenticateButNoUserLoggedInDescription.
  ///
  /// In en, this message translates to:
  /// **'No users are currently logged in. Please log out and log back in.'**
  String get error_reauthenticateButNoUserLoggedInDescription;

  /// No description provided for @error_reauthenticateWithDifferentEmailTitle.
  ///
  /// In en, this message translates to:
  /// **'Different email address.'**
  String get error_reauthenticateWithDifferentEmailTitle;

  /// No description provided for @error_reauthenticateWithDifferentEmailDescription.
  ///
  /// In en, this message translates to:
  /// **'The email address you entered differs from the email address you used to log in.'**
  String get error_reauthenticateWithDifferentEmailDescription;

  /// No description provided for @error_reauthenticateUserMismatchTitle.
  ///
  /// In en, this message translates to:
  /// **'User Mismatch'**
  String get error_reauthenticateUserMismatchTitle;

  /// No description provided for @error_reauthenticateUserMismatchDescription.
  ///
  /// In en, this message translates to:
  /// **'The user details differ from the details you used to authenticate yourself.'**
  String get error_reauthenticateUserMismatchDescription;

  /// No description provided for @error_reauthenticateInvalidCredentialTitle.
  ///
  /// In en, this message translates to:
  /// **'Incorrect email or password'**
  String get error_reauthenticateInvalidCredentialTitle;

  /// No description provided for @error_reauthenticateInvalidCredentialDescription.
  ///
  /// In en, this message translates to:
  /// **'The password or email address you entered is incorrect. If you want to reset your password, please log out and click on Reset password on the login page.'**
  String get error_reauthenticateInvalidCredentialDescription;

  /// No description provided for @success_resetPasswordEmailSentTitle.
  ///
  /// In en, this message translates to:
  /// **'Link Sent'**
  String get success_resetPasswordEmailSentTitle;

  /// No description provided for @success_resetPasswordEmailSentDescription.
  ///
  /// In en, this message translates to:
  /// **'If your email address is registered in our system, we have just sent you a link to reset your password. Please check your inbox.'**
  String get success_resetPasswordEmailSentDescription;

  /// No description provided for @success_reauthenticateSuccessTitle.
  ///
  /// In en, this message translates to:
  /// **'Successfully authenticated'**
  String get success_reauthenticateSuccessTitle;

  /// No description provided for @success_reauthenticateSuccessDescription.
  ///
  /// In en, this message translates to:
  /// **'You have successfully authenticated yourself. You can now delete your account.'**
  String get success_reauthenticateSuccessDescription;

  /// No description provided for @success_deleteAccountTitle.
  ///
  /// In en, this message translates to:
  /// **'Account successfully deleted.'**
  String get success_deleteAccountTitle;

  /// No description provided for @success_deleteAccountDescription.
  ///
  /// In en, this message translates to:
  /// **'Your account has been successfully deleted.'**
  String get success_deleteAccountDescription;

  /// No description provided for @success_editProfileTitle.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get success_editProfileTitle;

  /// No description provided for @success_editProfileDescription.
  ///
  /// In en, this message translates to:
  /// **'Your account was updated succesfully'**
  String get success_editProfileDescription;

  /// No description provided for @success_meetupCreatedTitle.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get success_meetupCreatedTitle;

  /// No description provided for @success_meetupCreatedDescription.
  ///
  /// In en, this message translates to:
  /// **'The action was successfully completed.'**
  String get success_meetupCreatedDescription;

  /// No description provided for @deleteMeetup.
  ///
  /// In en, this message translates to:
  /// **'Delete Meetup'**
  String get deleteMeetup;

  /// No description provided for @editMeetup.
  ///
  /// In en, this message translates to:
  /// **'Edit Meetup'**
  String get editMeetup;

  /// No description provided for @editDescription.
  ///
  /// In en, this message translates to:
  /// **'Edit Description'**
  String get editDescription;

  /// No description provided for @editDate.
  ///
  /// In en, this message translates to:
  /// **'Edit Date'**
  String get editDate;

  /// No description provided for @confirmDeleteMeetup.
  ///
  /// In en, this message translates to:
  /// **'Really delete meetup?'**
  String get confirmDeleteMeetup;

  /// No description provided for @confirmDeleteMeetupDescription.
  ///
  /// In en, this message translates to:
  /// **'The meetup will be permanently deleted and the other participant will be notified.'**
  String get confirmDeleteMeetupDescription;

  /// No description provided for @meetupEdited.
  ///
  /// In en, this message translates to:
  /// **'Meetup was edited'**
  String get meetupEdited;

  /// No description provided for @meetupEditedBy.
  ///
  /// In en, this message translates to:
  /// **'Edited by'**
  String get meetupEditedBy;

  /// No description provided for @acceptChanges.
  ///
  /// In en, this message translates to:
  /// **'Accept Changes'**
  String get acceptChanges;

  /// No description provided for @rejectChanges.
  ///
  /// In en, this message translates to:
  /// **'Reject Changes'**
  String get rejectChanges;

  /// No description provided for @editMeetupTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit Meetup'**
  String get editMeetupTitle;

  /// No description provided for @newDescription.
  ///
  /// In en, this message translates to:
  /// **'New Description'**
  String get newDescription;

  /// No description provided for @newMeetupDate.
  ///
  /// In en, this message translates to:
  /// **'New Date'**
  String get newMeetupDate;

  /// No description provided for @saveChanges.
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get saveChanges;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['de', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
