// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserFailures {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserFailures);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserFailures()';
}


}

/// @nodoc
class $UserFailuresCopyWith<$Res>  {
$UserFailuresCopyWith(UserFailures _, $Res Function(UserFailures) __);
}


/// Adds pattern-matching-related methods to [UserFailures].
extension UserFailuresPatterns on UserFailures {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ServerError value)?  serverError,TResult Function( UserAlreadyExists value)?  userAlreadyExists,TResult Function( UsernameAlreadyExists value)?  usernameAlreadyExists,TResult Function( UserNotFound value)?  userNotFound,TResult Function( ErrorWithMessage value)?  errorWithMessage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ServerError() when serverError != null:
return serverError(_that);case UserAlreadyExists() when userAlreadyExists != null:
return userAlreadyExists(_that);case UsernameAlreadyExists() when usernameAlreadyExists != null:
return usernameAlreadyExists(_that);case UserNotFound() when userNotFound != null:
return userNotFound(_that);case ErrorWithMessage() when errorWithMessage != null:
return errorWithMessage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ServerError value)  serverError,required TResult Function( UserAlreadyExists value)  userAlreadyExists,required TResult Function( UsernameAlreadyExists value)  usernameAlreadyExists,required TResult Function( UserNotFound value)  userNotFound,required TResult Function( ErrorWithMessage value)  errorWithMessage,}){
final _that = this;
switch (_that) {
case ServerError():
return serverError(_that);case UserAlreadyExists():
return userAlreadyExists(_that);case UsernameAlreadyExists():
return usernameAlreadyExists(_that);case UserNotFound():
return userNotFound(_that);case ErrorWithMessage():
return errorWithMessage(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ServerError value)?  serverError,TResult? Function( UserAlreadyExists value)?  userAlreadyExists,TResult? Function( UsernameAlreadyExists value)?  usernameAlreadyExists,TResult? Function( UserNotFound value)?  userNotFound,TResult? Function( ErrorWithMessage value)?  errorWithMessage,}){
final _that = this;
switch (_that) {
case ServerError() when serverError != null:
return serverError(_that);case UserAlreadyExists() when userAlreadyExists != null:
return userAlreadyExists(_that);case UsernameAlreadyExists() when usernameAlreadyExists != null:
return usernameAlreadyExists(_that);case UserNotFound() when userNotFound != null:
return userNotFound(_that);case ErrorWithMessage() when errorWithMessage != null:
return errorWithMessage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  serverError,TResult Function()?  userAlreadyExists,TResult Function()?  usernameAlreadyExists,TResult Function()?  userNotFound,TResult Function( String m)?  errorWithMessage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ServerError() when serverError != null:
return serverError();case UserAlreadyExists() when userAlreadyExists != null:
return userAlreadyExists();case UsernameAlreadyExists() when usernameAlreadyExists != null:
return usernameAlreadyExists();case UserNotFound() when userNotFound != null:
return userNotFound();case ErrorWithMessage() when errorWithMessage != null:
return errorWithMessage(_that.m);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  serverError,required TResult Function()  userAlreadyExists,required TResult Function()  usernameAlreadyExists,required TResult Function()  userNotFound,required TResult Function( String m)  errorWithMessage,}) {final _that = this;
switch (_that) {
case ServerError():
return serverError();case UserAlreadyExists():
return userAlreadyExists();case UsernameAlreadyExists():
return usernameAlreadyExists();case UserNotFound():
return userNotFound();case ErrorWithMessage():
return errorWithMessage(_that.m);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  serverError,TResult? Function()?  userAlreadyExists,TResult? Function()?  usernameAlreadyExists,TResult? Function()?  userNotFound,TResult? Function( String m)?  errorWithMessage,}) {final _that = this;
switch (_that) {
case ServerError() when serverError != null:
return serverError();case UserAlreadyExists() when userAlreadyExists != null:
return userAlreadyExists();case UsernameAlreadyExists() when usernameAlreadyExists != null:
return usernameAlreadyExists();case UserNotFound() when userNotFound != null:
return userNotFound();case ErrorWithMessage() when errorWithMessage != null:
return errorWithMessage(_that.m);case _:
  return null;

}
}

}

/// @nodoc


class ServerError implements UserFailures {
  const ServerError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserFailures.serverError()';
}


}




/// @nodoc


class UserAlreadyExists implements UserFailures {
  const UserAlreadyExists();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserAlreadyExists);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserFailures.userAlreadyExists()';
}


}




/// @nodoc


class UsernameAlreadyExists implements UserFailures {
  const UsernameAlreadyExists();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsernameAlreadyExists);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserFailures.usernameAlreadyExists()';
}


}




/// @nodoc


class UserNotFound implements UserFailures {
  const UserNotFound();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserNotFound);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserFailures.userNotFound()';
}


}




/// @nodoc


class ErrorWithMessage implements UserFailures {
  const ErrorWithMessage(this.m);
  

 final  String m;

/// Create a copy of UserFailures
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorWithMessageCopyWith<ErrorWithMessage> get copyWith => _$ErrorWithMessageCopyWithImpl<ErrorWithMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorWithMessage&&(identical(other.m, m) || other.m == m));
}


@override
int get hashCode => Object.hash(runtimeType,m);

@override
String toString() {
  return 'UserFailures.errorWithMessage(m: $m)';
}


}

/// @nodoc
abstract mixin class $ErrorWithMessageCopyWith<$Res> implements $UserFailuresCopyWith<$Res> {
  factory $ErrorWithMessageCopyWith(ErrorWithMessage value, $Res Function(ErrorWithMessage) _then) = _$ErrorWithMessageCopyWithImpl;
@useResult
$Res call({
 String m
});




}
/// @nodoc
class _$ErrorWithMessageCopyWithImpl<$Res>
    implements $ErrorWithMessageCopyWith<$Res> {
  _$ErrorWithMessageCopyWithImpl(this._self, this._then);

  final ErrorWithMessage _self;
  final $Res Function(ErrorWithMessage) _then;

/// Create a copy of UserFailures
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? m = null,}) {
  return _then(ErrorWithMessage(
null == m ? _self.m : m // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
