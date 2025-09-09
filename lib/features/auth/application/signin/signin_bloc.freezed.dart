// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SigninEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SigninEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SigninEvent()';
}


}

/// @nodoc
class $SigninEventCopyWith<$Res>  {
$SigninEventCopyWith(SigninEvent _, $Res Function(SigninEvent) __);
}


/// Adds pattern-matching-related methods to [SigninEvent].
extension SigninEventPatterns on SigninEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( EmailChanged value)?  emailChanged,TResult Function( PasswordChanged value)?  passwordChanged,TResult Function( SigninRequested value)?  signInRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case EmailChanged() when emailChanged != null:
return emailChanged(_that);case PasswordChanged() when passwordChanged != null:
return passwordChanged(_that);case SigninRequested() when signInRequested != null:
return signInRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( EmailChanged value)  emailChanged,required TResult Function( PasswordChanged value)  passwordChanged,required TResult Function( SigninRequested value)  signInRequested,}){
final _that = this;
switch (_that) {
case EmailChanged():
return emailChanged(_that);case PasswordChanged():
return passwordChanged(_that);case SigninRequested():
return signInRequested(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( EmailChanged value)?  emailChanged,TResult? Function( PasswordChanged value)?  passwordChanged,TResult? Function( SigninRequested value)?  signInRequested,}){
final _that = this;
switch (_that) {
case EmailChanged() when emailChanged != null:
return emailChanged(_that);case PasswordChanged() when passwordChanged != null:
return passwordChanged(_that);case SigninRequested() when signInRequested != null:
return signInRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String emailStr)?  emailChanged,TResult Function( String passwordStr)?  passwordChanged,TResult Function()?  signInRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case EmailChanged() when emailChanged != null:
return emailChanged(_that.emailStr);case PasswordChanged() when passwordChanged != null:
return passwordChanged(_that.passwordStr);case SigninRequested() when signInRequested != null:
return signInRequested();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String emailStr)  emailChanged,required TResult Function( String passwordStr)  passwordChanged,required TResult Function()  signInRequested,}) {final _that = this;
switch (_that) {
case EmailChanged():
return emailChanged(_that.emailStr);case PasswordChanged():
return passwordChanged(_that.passwordStr);case SigninRequested():
return signInRequested();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String emailStr)?  emailChanged,TResult? Function( String passwordStr)?  passwordChanged,TResult? Function()?  signInRequested,}) {final _that = this;
switch (_that) {
case EmailChanged() when emailChanged != null:
return emailChanged(_that.emailStr);case PasswordChanged() when passwordChanged != null:
return passwordChanged(_that.passwordStr);case SigninRequested() when signInRequested != null:
return signInRequested();case _:
  return null;

}
}

}

/// @nodoc


class EmailChanged implements SigninEvent {
  const EmailChanged(this.emailStr);
  

 final  String emailStr;

/// Create a copy of SigninEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmailChangedCopyWith<EmailChanged> get copyWith => _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailChanged&&(identical(other.emailStr, emailStr) || other.emailStr == emailStr));
}


@override
int get hashCode => Object.hash(runtimeType,emailStr);

@override
String toString() {
  return 'SigninEvent.emailChanged(emailStr: $emailStr)';
}


}

/// @nodoc
abstract mixin class $EmailChangedCopyWith<$Res> implements $SigninEventCopyWith<$Res> {
  factory $EmailChangedCopyWith(EmailChanged value, $Res Function(EmailChanged) _then) = _$EmailChangedCopyWithImpl;
@useResult
$Res call({
 String emailStr
});




}
/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(this._self, this._then);

  final EmailChanged _self;
  final $Res Function(EmailChanged) _then;

/// Create a copy of SigninEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? emailStr = null,}) {
  return _then(EmailChanged(
null == emailStr ? _self.emailStr : emailStr // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PasswordChanged implements SigninEvent {
  const PasswordChanged(this.passwordStr);
  

 final  String passwordStr;

/// Create a copy of SigninEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordChangedCopyWith<PasswordChanged> get copyWith => _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordChanged&&(identical(other.passwordStr, passwordStr) || other.passwordStr == passwordStr));
}


@override
int get hashCode => Object.hash(runtimeType,passwordStr);

@override
String toString() {
  return 'SigninEvent.passwordChanged(passwordStr: $passwordStr)';
}


}

/// @nodoc
abstract mixin class $PasswordChangedCopyWith<$Res> implements $SigninEventCopyWith<$Res> {
  factory $PasswordChangedCopyWith(PasswordChanged value, $Res Function(PasswordChanged) _then) = _$PasswordChangedCopyWithImpl;
@useResult
$Res call({
 String passwordStr
});




}
/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(this._self, this._then);

  final PasswordChanged _self;
  final $Res Function(PasswordChanged) _then;

/// Create a copy of SigninEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? passwordStr = null,}) {
  return _then(PasswordChanged(
null == passwordStr ? _self.passwordStr : passwordStr // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SigninRequested implements SigninEvent {
  const SigninRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SigninRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SigninEvent.signInRequested()';
}


}




/// @nodoc
mixin _$SigninState {

 Email get email; Password get password; bool get showErrorMessage; bool get isSubmitting; Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
/// Create a copy of SigninState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SigninStateCopyWith<SigninState> get copyWith => _$SigninStateCopyWithImpl<SigninState>(this as SigninState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SigninState&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.showErrorMessage, showErrorMessage) || other.showErrorMessage == showErrorMessage)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.authFailureOrSuccessOption, authFailureOrSuccessOption) || other.authFailureOrSuccessOption == authFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,showErrorMessage,isSubmitting,authFailureOrSuccessOption);

@override
String toString() {
  return 'SigninState(email: $email, password: $password, showErrorMessage: $showErrorMessage, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class $SigninStateCopyWith<$Res>  {
  factory $SigninStateCopyWith(SigninState value, $Res Function(SigninState) _then) = _$SigninStateCopyWithImpl;
@useResult
$Res call({
 Email email, Password password, bool showErrorMessage, bool isSubmitting, Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption
});




}
/// @nodoc
class _$SigninStateCopyWithImpl<$Res>
    implements $SigninStateCopyWith<$Res> {
  _$SigninStateCopyWithImpl(this._self, this._then);

  final SigninState _self;
  final $Res Function(SigninState) _then;

/// Create a copy of SigninState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? showErrorMessage = null,Object? isSubmitting = null,Object? authFailureOrSuccessOption = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as Email,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,showErrorMessage: null == showErrorMessage ? _self.showErrorMessage : showErrorMessage // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,authFailureOrSuccessOption: null == authFailureOrSuccessOption ? _self.authFailureOrSuccessOption : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<AuthFailure, Unit>>,
  ));
}

}


/// Adds pattern-matching-related methods to [SigninState].
extension SigninStatePatterns on SigninState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SigninState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SigninState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SigninState value)  $default,){
final _that = this;
switch (_that) {
case _SigninState():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SigninState value)?  $default,){
final _that = this;
switch (_that) {
case _SigninState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Email email,  Password password,  bool showErrorMessage,  bool isSubmitting,  Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SigninState() when $default != null:
return $default(_that.email,_that.password,_that.showErrorMessage,_that.isSubmitting,_that.authFailureOrSuccessOption);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Email email,  Password password,  bool showErrorMessage,  bool isSubmitting,  Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)  $default,) {final _that = this;
switch (_that) {
case _SigninState():
return $default(_that.email,_that.password,_that.showErrorMessage,_that.isSubmitting,_that.authFailureOrSuccessOption);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Email email,  Password password,  bool showErrorMessage,  bool isSubmitting,  Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?  $default,) {final _that = this;
switch (_that) {
case _SigninState() when $default != null:
return $default(_that.email,_that.password,_that.showErrorMessage,_that.isSubmitting,_that.authFailureOrSuccessOption);case _:
  return null;

}
}

}

/// @nodoc


class _SigninState implements SigninState {
  const _SigninState({required this.email, required this.password, required this.showErrorMessage, required this.isSubmitting, required this.authFailureOrSuccessOption});
  

@override final  Email email;
@override final  Password password;
@override final  bool showErrorMessage;
@override final  bool isSubmitting;
@override final  Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

/// Create a copy of SigninState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SigninStateCopyWith<_SigninState> get copyWith => __$SigninStateCopyWithImpl<_SigninState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SigninState&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.showErrorMessage, showErrorMessage) || other.showErrorMessage == showErrorMessage)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.authFailureOrSuccessOption, authFailureOrSuccessOption) || other.authFailureOrSuccessOption == authFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,showErrorMessage,isSubmitting,authFailureOrSuccessOption);

@override
String toString() {
  return 'SigninState(email: $email, password: $password, showErrorMessage: $showErrorMessage, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class _$SigninStateCopyWith<$Res> implements $SigninStateCopyWith<$Res> {
  factory _$SigninStateCopyWith(_SigninState value, $Res Function(_SigninState) _then) = __$SigninStateCopyWithImpl;
@override @useResult
$Res call({
 Email email, Password password, bool showErrorMessage, bool isSubmitting, Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption
});




}
/// @nodoc
class __$SigninStateCopyWithImpl<$Res>
    implements _$SigninStateCopyWith<$Res> {
  __$SigninStateCopyWithImpl(this._self, this._then);

  final _SigninState _self;
  final $Res Function(_SigninState) _then;

/// Create a copy of SigninState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? showErrorMessage = null,Object? isSubmitting = null,Object? authFailureOrSuccessOption = null,}) {
  return _then(_SigninState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as Email,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,showErrorMessage: null == showErrorMessage ? _self.showErrorMessage : showErrorMessage // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,authFailureOrSuccessOption: null == authFailureOrSuccessOption ? _self.authFailureOrSuccessOption : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<AuthFailure, Unit>>,
  ));
}


}

// dart format on
