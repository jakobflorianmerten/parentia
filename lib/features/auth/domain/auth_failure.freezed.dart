// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure()';
}


}

/// @nodoc
class $AuthFailureCopyWith<$Res>  {
$AuthFailureCopyWith(AuthFailure _, $Res Function(AuthFailure) __);
}


/// Adds pattern-matching-related methods to [AuthFailure].
extension AuthFailurePatterns on AuthFailure {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CancelledByUser value)?  cancelledByUser,TResult Function( ServerError value)?  serverError,TResult Function( EmailAlreadyInUse value)?  emailAlreadyInUse,TResult Function( UserAlreadySignedInOnDifferentDevice value)?  userAlreadySignedInOnDifferentDevice,TResult Function( PasswordResetInvalidEmail value)?  passwordResetInvalidEmail,TResult Function( PasswordResetUserNotFound value)?  passwordResetUserNotFound,TResult Function( ReauthenticateUserButNoUserLoggedIn value)?  reauthenticateUserButNoUserLoggedIn,TResult Function( ReauthenticateUserWithDifferentEmail value)?  reauthenticateUserWithDifferentEmail,TResult Function( ReauthenticateUserMismatch value)?  reauthenticateUserMismatch,TResult Function( ReauthenticateInvalidCredential value)?  reauthenticateInvalidCredential,TResult Function( DeleteUserButNeedToReauthenticate value)?  deleteUserButNeedToReauthenticate,TResult Function( InvalidEmailAndPasswordCombination value)?  invalidEmailAndPasswordCombination,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CancelledByUser() when cancelledByUser != null:
return cancelledByUser(_that);case ServerError() when serverError != null:
return serverError(_that);case EmailAlreadyInUse() when emailAlreadyInUse != null:
return emailAlreadyInUse(_that);case UserAlreadySignedInOnDifferentDevice() when userAlreadySignedInOnDifferentDevice != null:
return userAlreadySignedInOnDifferentDevice(_that);case PasswordResetInvalidEmail() when passwordResetInvalidEmail != null:
return passwordResetInvalidEmail(_that);case PasswordResetUserNotFound() when passwordResetUserNotFound != null:
return passwordResetUserNotFound(_that);case ReauthenticateUserButNoUserLoggedIn() when reauthenticateUserButNoUserLoggedIn != null:
return reauthenticateUserButNoUserLoggedIn(_that);case ReauthenticateUserWithDifferentEmail() when reauthenticateUserWithDifferentEmail != null:
return reauthenticateUserWithDifferentEmail(_that);case ReauthenticateUserMismatch() when reauthenticateUserMismatch != null:
return reauthenticateUserMismatch(_that);case ReauthenticateInvalidCredential() when reauthenticateInvalidCredential != null:
return reauthenticateInvalidCredential(_that);case DeleteUserButNeedToReauthenticate() when deleteUserButNeedToReauthenticate != null:
return deleteUserButNeedToReauthenticate(_that);case InvalidEmailAndPasswordCombination() when invalidEmailAndPasswordCombination != null:
return invalidEmailAndPasswordCombination(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CancelledByUser value)  cancelledByUser,required TResult Function( ServerError value)  serverError,required TResult Function( EmailAlreadyInUse value)  emailAlreadyInUse,required TResult Function( UserAlreadySignedInOnDifferentDevice value)  userAlreadySignedInOnDifferentDevice,required TResult Function( PasswordResetInvalidEmail value)  passwordResetInvalidEmail,required TResult Function( PasswordResetUserNotFound value)  passwordResetUserNotFound,required TResult Function( ReauthenticateUserButNoUserLoggedIn value)  reauthenticateUserButNoUserLoggedIn,required TResult Function( ReauthenticateUserWithDifferentEmail value)  reauthenticateUserWithDifferentEmail,required TResult Function( ReauthenticateUserMismatch value)  reauthenticateUserMismatch,required TResult Function( ReauthenticateInvalidCredential value)  reauthenticateInvalidCredential,required TResult Function( DeleteUserButNeedToReauthenticate value)  deleteUserButNeedToReauthenticate,required TResult Function( InvalidEmailAndPasswordCombination value)  invalidEmailAndPasswordCombination,}){
final _that = this;
switch (_that) {
case CancelledByUser():
return cancelledByUser(_that);case ServerError():
return serverError(_that);case EmailAlreadyInUse():
return emailAlreadyInUse(_that);case UserAlreadySignedInOnDifferentDevice():
return userAlreadySignedInOnDifferentDevice(_that);case PasswordResetInvalidEmail():
return passwordResetInvalidEmail(_that);case PasswordResetUserNotFound():
return passwordResetUserNotFound(_that);case ReauthenticateUserButNoUserLoggedIn():
return reauthenticateUserButNoUserLoggedIn(_that);case ReauthenticateUserWithDifferentEmail():
return reauthenticateUserWithDifferentEmail(_that);case ReauthenticateUserMismatch():
return reauthenticateUserMismatch(_that);case ReauthenticateInvalidCredential():
return reauthenticateInvalidCredential(_that);case DeleteUserButNeedToReauthenticate():
return deleteUserButNeedToReauthenticate(_that);case InvalidEmailAndPasswordCombination():
return invalidEmailAndPasswordCombination(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CancelledByUser value)?  cancelledByUser,TResult? Function( ServerError value)?  serverError,TResult? Function( EmailAlreadyInUse value)?  emailAlreadyInUse,TResult? Function( UserAlreadySignedInOnDifferentDevice value)?  userAlreadySignedInOnDifferentDevice,TResult? Function( PasswordResetInvalidEmail value)?  passwordResetInvalidEmail,TResult? Function( PasswordResetUserNotFound value)?  passwordResetUserNotFound,TResult? Function( ReauthenticateUserButNoUserLoggedIn value)?  reauthenticateUserButNoUserLoggedIn,TResult? Function( ReauthenticateUserWithDifferentEmail value)?  reauthenticateUserWithDifferentEmail,TResult? Function( ReauthenticateUserMismatch value)?  reauthenticateUserMismatch,TResult? Function( ReauthenticateInvalidCredential value)?  reauthenticateInvalidCredential,TResult? Function( DeleteUserButNeedToReauthenticate value)?  deleteUserButNeedToReauthenticate,TResult? Function( InvalidEmailAndPasswordCombination value)?  invalidEmailAndPasswordCombination,}){
final _that = this;
switch (_that) {
case CancelledByUser() when cancelledByUser != null:
return cancelledByUser(_that);case ServerError() when serverError != null:
return serverError(_that);case EmailAlreadyInUse() when emailAlreadyInUse != null:
return emailAlreadyInUse(_that);case UserAlreadySignedInOnDifferentDevice() when userAlreadySignedInOnDifferentDevice != null:
return userAlreadySignedInOnDifferentDevice(_that);case PasswordResetInvalidEmail() when passwordResetInvalidEmail != null:
return passwordResetInvalidEmail(_that);case PasswordResetUserNotFound() when passwordResetUserNotFound != null:
return passwordResetUserNotFound(_that);case ReauthenticateUserButNoUserLoggedIn() when reauthenticateUserButNoUserLoggedIn != null:
return reauthenticateUserButNoUserLoggedIn(_that);case ReauthenticateUserWithDifferentEmail() when reauthenticateUserWithDifferentEmail != null:
return reauthenticateUserWithDifferentEmail(_that);case ReauthenticateUserMismatch() when reauthenticateUserMismatch != null:
return reauthenticateUserMismatch(_that);case ReauthenticateInvalidCredential() when reauthenticateInvalidCredential != null:
return reauthenticateInvalidCredential(_that);case DeleteUserButNeedToReauthenticate() when deleteUserButNeedToReauthenticate != null:
return deleteUserButNeedToReauthenticate(_that);case InvalidEmailAndPasswordCombination() when invalidEmailAndPasswordCombination != null:
return invalidEmailAndPasswordCombination(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  cancelledByUser,TResult Function()?  serverError,TResult Function()?  emailAlreadyInUse,TResult Function()?  userAlreadySignedInOnDifferentDevice,TResult Function()?  passwordResetInvalidEmail,TResult Function()?  passwordResetUserNotFound,TResult Function()?  reauthenticateUserButNoUserLoggedIn,TResult Function()?  reauthenticateUserWithDifferentEmail,TResult Function()?  reauthenticateUserMismatch,TResult Function()?  reauthenticateInvalidCredential,TResult Function()?  deleteUserButNeedToReauthenticate,TResult Function()?  invalidEmailAndPasswordCombination,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CancelledByUser() when cancelledByUser != null:
return cancelledByUser();case ServerError() when serverError != null:
return serverError();case EmailAlreadyInUse() when emailAlreadyInUse != null:
return emailAlreadyInUse();case UserAlreadySignedInOnDifferentDevice() when userAlreadySignedInOnDifferentDevice != null:
return userAlreadySignedInOnDifferentDevice();case PasswordResetInvalidEmail() when passwordResetInvalidEmail != null:
return passwordResetInvalidEmail();case PasswordResetUserNotFound() when passwordResetUserNotFound != null:
return passwordResetUserNotFound();case ReauthenticateUserButNoUserLoggedIn() when reauthenticateUserButNoUserLoggedIn != null:
return reauthenticateUserButNoUserLoggedIn();case ReauthenticateUserWithDifferentEmail() when reauthenticateUserWithDifferentEmail != null:
return reauthenticateUserWithDifferentEmail();case ReauthenticateUserMismatch() when reauthenticateUserMismatch != null:
return reauthenticateUserMismatch();case ReauthenticateInvalidCredential() when reauthenticateInvalidCredential != null:
return reauthenticateInvalidCredential();case DeleteUserButNeedToReauthenticate() when deleteUserButNeedToReauthenticate != null:
return deleteUserButNeedToReauthenticate();case InvalidEmailAndPasswordCombination() when invalidEmailAndPasswordCombination != null:
return invalidEmailAndPasswordCombination();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  cancelledByUser,required TResult Function()  serverError,required TResult Function()  emailAlreadyInUse,required TResult Function()  userAlreadySignedInOnDifferentDevice,required TResult Function()  passwordResetInvalidEmail,required TResult Function()  passwordResetUserNotFound,required TResult Function()  reauthenticateUserButNoUserLoggedIn,required TResult Function()  reauthenticateUserWithDifferentEmail,required TResult Function()  reauthenticateUserMismatch,required TResult Function()  reauthenticateInvalidCredential,required TResult Function()  deleteUserButNeedToReauthenticate,required TResult Function()  invalidEmailAndPasswordCombination,}) {final _that = this;
switch (_that) {
case CancelledByUser():
return cancelledByUser();case ServerError():
return serverError();case EmailAlreadyInUse():
return emailAlreadyInUse();case UserAlreadySignedInOnDifferentDevice():
return userAlreadySignedInOnDifferentDevice();case PasswordResetInvalidEmail():
return passwordResetInvalidEmail();case PasswordResetUserNotFound():
return passwordResetUserNotFound();case ReauthenticateUserButNoUserLoggedIn():
return reauthenticateUserButNoUserLoggedIn();case ReauthenticateUserWithDifferentEmail():
return reauthenticateUserWithDifferentEmail();case ReauthenticateUserMismatch():
return reauthenticateUserMismatch();case ReauthenticateInvalidCredential():
return reauthenticateInvalidCredential();case DeleteUserButNeedToReauthenticate():
return deleteUserButNeedToReauthenticate();case InvalidEmailAndPasswordCombination():
return invalidEmailAndPasswordCombination();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  cancelledByUser,TResult? Function()?  serverError,TResult? Function()?  emailAlreadyInUse,TResult? Function()?  userAlreadySignedInOnDifferentDevice,TResult? Function()?  passwordResetInvalidEmail,TResult? Function()?  passwordResetUserNotFound,TResult? Function()?  reauthenticateUserButNoUserLoggedIn,TResult? Function()?  reauthenticateUserWithDifferentEmail,TResult? Function()?  reauthenticateUserMismatch,TResult? Function()?  reauthenticateInvalidCredential,TResult? Function()?  deleteUserButNeedToReauthenticate,TResult? Function()?  invalidEmailAndPasswordCombination,}) {final _that = this;
switch (_that) {
case CancelledByUser() when cancelledByUser != null:
return cancelledByUser();case ServerError() when serverError != null:
return serverError();case EmailAlreadyInUse() when emailAlreadyInUse != null:
return emailAlreadyInUse();case UserAlreadySignedInOnDifferentDevice() when userAlreadySignedInOnDifferentDevice != null:
return userAlreadySignedInOnDifferentDevice();case PasswordResetInvalidEmail() when passwordResetInvalidEmail != null:
return passwordResetInvalidEmail();case PasswordResetUserNotFound() when passwordResetUserNotFound != null:
return passwordResetUserNotFound();case ReauthenticateUserButNoUserLoggedIn() when reauthenticateUserButNoUserLoggedIn != null:
return reauthenticateUserButNoUserLoggedIn();case ReauthenticateUserWithDifferentEmail() when reauthenticateUserWithDifferentEmail != null:
return reauthenticateUserWithDifferentEmail();case ReauthenticateUserMismatch() when reauthenticateUserMismatch != null:
return reauthenticateUserMismatch();case ReauthenticateInvalidCredential() when reauthenticateInvalidCredential != null:
return reauthenticateInvalidCredential();case DeleteUserButNeedToReauthenticate() when deleteUserButNeedToReauthenticate != null:
return deleteUserButNeedToReauthenticate();case InvalidEmailAndPasswordCombination() when invalidEmailAndPasswordCombination != null:
return invalidEmailAndPasswordCombination();case _:
  return null;

}
}

}

/// @nodoc


class CancelledByUser implements AuthFailure {
  const CancelledByUser();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelledByUser);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.cancelledByUser()';
}


}




/// @nodoc


class ServerError implements AuthFailure {
  const ServerError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.serverError()';
}


}




/// @nodoc


class EmailAlreadyInUse implements AuthFailure {
  const EmailAlreadyInUse();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailAlreadyInUse);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.emailAlreadyInUse()';
}


}




/// @nodoc


class UserAlreadySignedInOnDifferentDevice implements AuthFailure {
  const UserAlreadySignedInOnDifferentDevice();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserAlreadySignedInOnDifferentDevice);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.userAlreadySignedInOnDifferentDevice()';
}


}




/// @nodoc


class PasswordResetInvalidEmail implements AuthFailure {
  const PasswordResetInvalidEmail();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordResetInvalidEmail);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.passwordResetInvalidEmail()';
}


}




/// @nodoc


class PasswordResetUserNotFound implements AuthFailure {
  const PasswordResetUserNotFound();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordResetUserNotFound);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.passwordResetUserNotFound()';
}


}




/// @nodoc


class ReauthenticateUserButNoUserLoggedIn implements AuthFailure {
  const ReauthenticateUserButNoUserLoggedIn();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReauthenticateUserButNoUserLoggedIn);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.reauthenticateUserButNoUserLoggedIn()';
}


}




/// @nodoc


class ReauthenticateUserWithDifferentEmail implements AuthFailure {
  const ReauthenticateUserWithDifferentEmail();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReauthenticateUserWithDifferentEmail);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.reauthenticateUserWithDifferentEmail()';
}


}




/// @nodoc


class ReauthenticateUserMismatch implements AuthFailure {
  const ReauthenticateUserMismatch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReauthenticateUserMismatch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.reauthenticateUserMismatch()';
}


}




/// @nodoc


class ReauthenticateInvalidCredential implements AuthFailure {
  const ReauthenticateInvalidCredential();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReauthenticateInvalidCredential);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.reauthenticateInvalidCredential()';
}


}




/// @nodoc


class DeleteUserButNeedToReauthenticate implements AuthFailure {
  const DeleteUserButNeedToReauthenticate();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteUserButNeedToReauthenticate);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.deleteUserButNeedToReauthenticate()';
}


}




/// @nodoc


class InvalidEmailAndPasswordCombination implements AuthFailure {
  const InvalidEmailAndPasswordCombination();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidEmailAndPasswordCombination);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.invalidEmailAndPasswordCombination()';
}


}




// dart format on
