// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get meetupHistory => 'Verlauf';

  @override
  String get noMeetups => 'Bisher noch keine Treffen';

  @override
  String get noCurrentMeetups => 'Du hast momentan keine Treffen.';

  @override
  String get account => 'Konto';

  @override
  String get notifications => 'Nachrichten';

  @override
  String get close => 'Schließen';

  @override
  String get delete => 'Löschen';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get search => 'Suchen';

  @override
  String get next => 'Weiter';

  @override
  String get back => 'Zurück';

  @override
  String get meetupDate => 'Treffpunkt-Datum';

  @override
  String get paymentDate => 'Treffpunkt-Datum';

  @override
  String get iacceptthe => 'Ich akzeptiere die ';

  @override
  String get privacyPolicy => 'Datenschutzerklärung';

  @override
  String get andThe => ' und die ';

  @override
  String get settings => 'Einstellungen';

  @override
  String get termsOfUse => 'Nutzungsbedingungen';

  @override
  String get impressum => 'Impressum';

  @override
  String get meetupDateDescription =>
      'Wähle das Datum für das Treffen aus. Dein Partner wird an das Datum erinnert.';

  @override
  String get paymentDateDescription =>
      'Wähle das Datum für das Treffen aus. Dein Partner wird an das Datum erinnert.';

  @override
  String get person => 'Person';

  @override
  String get description => 'Beschreibung';

  @override
  String get enterDescription =>
      'Gib eine Beschreibung für dieses Treffen ein...';

  @override
  String get minimum10Characters => 'Mindestens 10 Zeichen';

  @override
  String get amount => 'Beschreibung';

  @override
  String get amount_in_euros => 'Beschreibung';

  @override
  String get send => 'Abschicken';

  @override
  String get dataPrivacy => 'Datenschutz';

  @override
  String get dataPrivacyDescription =>
      'Wir nutzen Firebase Analytics und Crashlytics, um die App-Nutzung zu verstehen und Fehler zu beheben. Dürfen wir anonymisierte Daten zur Verbesserung der App sammeln?';

  @override
  String get usageAnalysis => 'Nutzungsanalyse';

  @override
  String get usageAnalysisDescription =>
      'Hilft uns zu verstehen, wie die App genutzt wird, um sie zu verbessern.';

  @override
  String get errorReports => 'Fehlerberichte';

  @override
  String get errorReportsDescription =>
      'Sendet automatisch Berichte bei Abstürzen, damit wir Fehler beheben können.';

  @override
  String get rejectAll => 'Alle ablehnen';

  @override
  String get saveSelected => 'Auswahl speichern';

  @override
  String get dataPrivacySettings => 'Datenschutz Einstellungen';

  @override
  String get logout => 'Ausloggen';

  @override
  String get deleteAccount => 'Konto löschen';

  @override
  String get fullName => 'Voller Name';

  @override
  String get username => 'Nutzername';

  @override
  String get email => 'E-Mail-Adresse';

  @override
  String get edit => 'Bearbeiten';

  @override
  String get save => 'Sichern';

  @override
  String get balance => 'Saldo';

  @override
  String get login => 'Anmelden';

  @override
  String get register => 'Registrieren';

  @override
  String get password => 'Passwort';

  @override
  String get verifyEmail => 'Email verifizieren';

  @override
  String get verifyEmailDescription =>
      'Wir haben einen Verzifizierungscode an Ihre E-Mail-Adresse geschickt. Bitte geben Sie diesen hier ein.';

  @override
  String get verificationCode => 'Verifizierungs-Code';

  @override
  String get resendVerificationEmail => 'Erneut senden';

  @override
  String get forgotPassword => 'Passwort vergessen?';

  @override
  String get resetPassword => 'Passwort zurücksetzen';

  @override
  String get reauthenticate => 'Erneut authentifizieren';

  @override
  String get activeMeetups => 'Aktive Treffen';

  @override
  String get notActiveMeetups => 'Noch nicht bestätigte Treffen';

  @override
  String get accept => 'Akzeptieren';

  @override
  String get reject => 'Ablehnen';

  @override
  String get initiator => 'Initiator';

  @override
  String get participant => 'Teilnehmer';

  @override
  String get creditor => 'Initiator';

  @override
  String get debtor => 'Teilnehmer';

  @override
  String get reauthenticateDescription =>
      'Um sicherzustellen, dass nur Sie Änderungen an Ihrem Konto vornehmen können, müssen wir Ihre Identität überprüfen, bevor wir Ihr Konto löschen.';

  @override
  String get meetup_status_pending => 'Ausstehend';

  @override
  String get meetup_status_active => 'Aktiv';

  @override
  String get meetup_status_rejected => 'Abgelehnt';

  @override
  String get meetup_status_completed => 'Abgeschlossen';

  @override
  String get meetup_status_pending_changes => 'Änderungen ausstehend';

  @override
  String get error_defaultMessageTitle => 'Fehler';

  @override
  String get error_defaultMessageDescription =>
      'Es ist ein unbekannter Fehler aufgetreten, bitte versuche es später erneut.';

  @override
  String get error_meetupCreateTitle => 'Fehler beim Erstellen des Treffens';

  @override
  String get error_meetupCreateDescription =>
      'Das Treffen konnte nicht erstellt werden. Bitte versuchen Sie es später erneut.';

  @override
  String get error_createAccountUsernameAlreadyExistsTitle =>
      'Nutzername existiert bereits.';

  @override
  String get error_createAccountUsernameAlreadyExistsDescription =>
      'Der Nutzername existiert bereits und kann nicht mehrfach vergeben werden. Bitte ändere diesen.';

  @override
  String get error_signinInvalidEmailAndPasswordTitle =>
      'Ungültige Passwort- und E-Mail-Kombination';

  @override
  String get error_signinInvalidEmailAndPasswordDescription =>
      'Die angegebene E-Mail-Adresse und das Passwort stimmen nicht überein.';

  @override
  String get error_signinUserAlreadySignedInOnDifferentDeviceTitle =>
      'Der Nutzer ist bereits auf einem anderen Gerät eingeloggt.';

  @override
  String get error_signinUserAlreadySignedInOnDifferentDeviceDescription =>
      'Der Nutzer ist bereits auf einem anderen Gerät eingeloggt. Ein Nutzer darf nur an einem Gerät eingeloggt sein.';

  @override
  String get error_signupEmailAlreadyInUseTitle =>
      'E-Mail-Adresse bereits in Gebrauch';

  @override
  String get error_signupEmailAlreadyInUseDescription =>
      'Die angegebene E-Mail-Adresse ist bereits mit einem Konto verknüpft.';

  @override
  String get error_invalidEmailMessageTitle => 'Keine valide Email';

  @override
  String get error_invalidEmailMessageDescription =>
      'Die E-Mail-Adresse ist nicht valide. Probiere es mit einer anderen E-Mail-Adresse.';

  @override
  String get error_reauthenticateButNoUserLoggedInTitle =>
      'Kein Nutzer ist eingeloggt.';

  @override
  String get error_reauthenticateButNoUserLoggedInDescription =>
      'Es ist aktuell kein Nutzer eingeloggt. Bitte logge dich aus und wieder ein.';

  @override
  String get error_reauthenticateWithDifferentEmailTitle =>
      'Abweichende E-Mail-Adresse.';

  @override
  String get error_reauthenticateWithDifferentEmailDescription =>
      'Die angegebene E-Mail-Adresse weicht von der E-Mail-Adresse ab, mit der du eingeloggt bist.';

  @override
  String get error_reauthenticateUserMismatchTitle => 'Abweichende Nutzer.';

  @override
  String get error_reauthenticateUserMismatchDescription =>
      'Die Nutzerangaben weichen von den Angaben ab, mit denen du authentifiziert bist.';

  @override
  String get error_reauthenticateInvalidCredentialTitle =>
      'Falsche Email oder Passwort';

  @override
  String get error_reauthenticateInvalidCredentialDescription =>
      'Das angegebene Passwort oder die angegebene Email ist nicht korrekt. Wenn du dein Passwort zurücksetzen möchtest, dann logge dich bitte aus und drücke auf Passwort zurücksetzen auf der Login-Seite.';

  @override
  String get success_resetPasswordEmailSentTitle => 'Link versendet';

  @override
  String get success_resetPasswordEmailSentDescription =>
      'Falls Ihre E-Mail-Adresse in unserem System registriert ist, haben wir Ihnen soeben einen Link zum Zurücksetzen des Passworts gesendet. Bitte überprüfen Sie Ihren Posteingang.';

  @override
  String get success_reauthenticateSuccessTitle =>
      'Erfolgreich authentifiziert';

  @override
  String get success_reauthenticateSuccessDescription =>
      'Du hast dich erfolgreich authentifiziert. Du kannst jetzt deinen Account löschen.';

  @override
  String get success_deleteAccountTitle => 'Account erfolgreich gelöscht.';

  @override
  String get success_deleteAccountDescription =>
      'Dein Account wurde erfolgreich gelöscht.';

  @override
  String get success_editProfileTitle => 'Erfolg';

  @override
  String get success_editProfileDescription =>
      'Ihr Konto wurde erfolgreich aktualisiert.';

  @override
  String get success_meetupCreatedTitle => 'Erfolg';

  @override
  String get success_meetupCreatedDescription =>
      'Die Aktion wurde erfolgreich ausgeführt.';

  @override
  String get deleteMeetup => 'Treffen löschen';

  @override
  String get editMeetup => 'Treffen bearbeiten';

  @override
  String get editDescription => 'Beschreibung bearbeiten';

  @override
  String get editDate => 'Datum ändern';

  @override
  String get confirmDeleteMeetup => 'Treffen wirklich löschen?';

  @override
  String get confirmDeleteMeetupDescription =>
      'Das Treffen wird dauerhaft gelöscht und der andere Teilnehmer wird benachrichtigt.';

  @override
  String get meetupEdited => 'Treffen wurde bearbeitet';

  @override
  String get meetupEditedBy => 'Bearbeitet von';

  @override
  String get acceptChanges => 'Änderungen akzeptieren';

  @override
  String get rejectChanges => 'Änderungen ablehnen';

  @override
  String get editMeetupTitle => 'Treffen bearbeiten';

  @override
  String get newDescription => 'Neue Beschreibung';

  @override
  String get newMeetupDate => 'Neues Datum';

  @override
  String get saveChanges => 'Änderungen speichern';
}
