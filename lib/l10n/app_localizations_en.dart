// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get transactionHistory => 'Transaction History';

  @override
  String get noTransactions => 'No transactions yet.';

  @override
  String get noCurrentTransactions => 'You currently have no transactions.';

  @override
  String get account => 'Account';

  @override
  String get notifications => 'Notifications';

  @override
  String get close => 'Close';

  @override
  String get search => 'Search';

  @override
  String get next => 'Next';

  @override
  String get back => 'Back';

  @override
  String get paymentDate => 'Payment Date';

  @override
  String get iacceptthe => 'I accept the ';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get andThe => ' and the ';

  @override
  String get settings => 'Settings';

  @override
  String get termsOfUse => 'Terms of use';

  @override
  String get impressum => 'Impressum';

  @override
  String get paymentDateDescription =>
      'Select the payment date for this transaction. Your transaction partner will be reminded of the date.';

  @override
  String get person => 'Person';

  @override
  String get amount => 'Amount';

  @override
  String get send => 'Send';

  @override
  String get dataPrivacy => 'Data Privacy';

  @override
  String get dataPrivacyDescription =>
      'We use Firebase Analytics and Crashlytics to understand app usage and fix bugs. May we collect anonymized data to improve the app?';

  @override
  String get usageAnalysis => 'Usage analysis';

  @override
  String get usageAnalysisDescription =>
      'Helps us understand how the app is used so we can improve it.';

  @override
  String get errorReports => 'Error reports';

  @override
  String get errorReportsDescription =>
      'Automatically sends reports when crashes occur so that we can fix bugs.';

  @override
  String get rejectAll => 'Reject All';

  @override
  String get saveSelected => 'Save Selected';

  @override
  String get dataPrivacySettings => 'Data Privacy Settings';

  @override
  String get logout => 'Logout';

  @override
  String get deleteAccount => 'Delete Account';

  @override
  String get fullName => 'Full name';

  @override
  String get username => 'Username';

  @override
  String get email => 'Email address';

  @override
  String get edit => 'Edit';

  @override
  String get save => 'Save';

  @override
  String get balance => 'Balance';

  @override
  String get login => 'Sign In';

  @override
  String get register => 'Sign Up';

  @override
  String get password => 'Password';

  @override
  String get verifyEmail => 'Verify Email';

  @override
  String get verifyEmailDescription =>
      'We have sent a verification code to your email address. Please enter it here.';

  @override
  String get verificationCode => 'Verification Code';

  @override
  String get resendVerificationEmail => 'Resend Email';

  @override
  String get forgotPassword => 'Forgot Password?';

  @override
  String get resetPassword => 'Reset Password';

  @override
  String get reauthenticate => 'Reauthenticate';

  @override
  String get activeTransactions => 'Active Transactions';

  @override
  String get notActiveTransactions => 'Transactions not yet confirmed';

  @override
  String get accept => 'Accept';

  @override
  String get reject => 'Reject';

  @override
  String get creditor => 'Creditor';

  @override
  String get debtor => 'Debtor';

  @override
  String get amount_in_euros => 'Amount in euros';

  @override
  String get pay => 'Payed';

  @override
  String get reauthenticateDescription =>
      'To ensure that only you can make changes to your account, we need to verify your identity before deleting your account.';

  @override
  String get transaction_status_pending => 'Pending';

  @override
  String get transaction_status_active => 'Active';

  @override
  String get transaction_status_rejected => 'Rejected';

  @override
  String get transaction_status_payment_pending => 'Payment Pending';

  @override
  String get transaction_status_payment_accepted => 'Payment Accepted';

  @override
  String get error_defaultMessageTitle => 'Error';

  @override
  String get error_defaultMessageDescription =>
      'An unknown error has occurred. Please try again later.';

  @override
  String get error_transactionCreateTitle => 'Error creating transaction';

  @override
  String get error_transactionCreateDescription =>
      'The transaction could not be created. Please try again later.';

  @override
  String get error_createAccountUsernameAlreadyExistsTitle =>
      'Username already exists.';

  @override
  String get error_createAccountUsernameAlreadyExistsDescription =>
      'The username already exists and cannot be assigned more than once. Please change it.';

  @override
  String get error_signinInvalidEmailAndPasswordTitle =>
      'Invalid password and email match';

  @override
  String get error_signinInvalidEmailAndPasswordDescription =>
      'The provided email and password do not match.';

  @override
  String get error_signinUserAlreadySignedInOnDifferentDeviceTitle =>
      'The user is already logged in on another device.';

  @override
  String get error_signinUserAlreadySignedInOnDifferentDeviceDescription =>
      'The user is already logged in on another device. A user may only be logged in on one device.';

  @override
  String get error_signupEmailAlreadyInUseTitle => 'Email already in use';

  @override
  String get error_signupEmailAlreadyInUseDescription =>
      'The provided email is already attached to an account.';

  @override
  String get error_invalidEmailMessageTitle => 'Invalid email address';

  @override
  String get error_invalidEmailMessageDescription =>
      'The email address is invalid. Try using a different email address.';

  @override
  String get error_reauthenticateButNoUserLoggedInTitle =>
      'No user is logged in.';

  @override
  String get error_reauthenticateButNoUserLoggedInDescription =>
      'No users are currently logged in. Please log out and log back in.';

  @override
  String get error_reauthenticateWithDifferentEmailTitle =>
      'Different email address.';

  @override
  String get error_reauthenticateWithDifferentEmailDescription =>
      'The email address you entered differs from the email address you used to log in.';

  @override
  String get error_reauthenticateUserMismatchTitle => 'User Mismatch';

  @override
  String get error_reauthenticateUserMismatchDescription =>
      'The user details differ from the details you used to authenticate yourself.';

  @override
  String get error_reauthenticateInvalidCredentialTitle =>
      'Incorrect email or password';

  @override
  String get error_reauthenticateInvalidCredentialDescription =>
      'The password or email address you entered is incorrect. If you want to reset your password, please log out and click on Reset password on the login page.';

  @override
  String get success_resetPasswordEmailSentTitle => 'Link Sent';

  @override
  String get success_resetPasswordEmailSentDescription =>
      'If your email address is registered in our system, we have just sent you a link to reset your password. Please check your inbox.';

  @override
  String get success_reauthenticateSuccessTitle => 'Successfully authenticated';

  @override
  String get success_reauthenticateSuccessDescription =>
      'You have successfully authenticated yourself. You can now delete your account.';

  @override
  String get success_deleteAccountTitle => 'Account successfully deleted.';

  @override
  String get success_deleteAccountDescription =>
      'Your account has been successfully deleted.';

  @override
  String get success_editProfileTitle => 'Success';

  @override
  String get success_editProfileDescription =>
      'Your account was updated succesfully';

  @override
  String get success_transactionCreatedTitle => 'Success';

  @override
  String get success_transactionCreatedDescription =>
      'The action was successfully completed.';
}
