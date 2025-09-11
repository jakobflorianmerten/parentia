import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure{
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.userAlreadySignedInOnDifferentDevice() = UserAlreadySignedInOnDifferentDevice;
  const factory AuthFailure.passwordResetInvalidEmail() = PasswordResetInvalidEmail;
  const factory AuthFailure.passwordResetUserNotFound() = PasswordResetUserNotFound;
  const factory AuthFailure.reauthenticateUserButNoUserLoggedIn() = ReauthenticateUserButNoUserLoggedIn;
  const factory AuthFailure.reauthenticateUserWithDifferentEmail() = ReauthenticateUserWithDifferentEmail;
  const factory AuthFailure.reauthenticateUserMismatch() = ReauthenticateUserMismatch;
  const factory AuthFailure.reauthenticateInvalidCredential() = ReauthenticateInvalidCredential;
  const factory AuthFailure.deleteUserButNeedToReauthenticate() = DeleteUserButNeedToReauthenticate;
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
}