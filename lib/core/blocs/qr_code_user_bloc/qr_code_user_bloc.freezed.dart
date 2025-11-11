// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_code_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QrCodeUserEvent {

 String get userId;
/// Create a copy of QrCodeUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QrCodeUserEventCopyWith<QrCodeUserEvent> get copyWith => _$QrCodeUserEventCopyWithImpl<QrCodeUserEvent>(this as QrCodeUserEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QrCodeUserEvent&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'QrCodeUserEvent(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $QrCodeUserEventCopyWith<$Res>  {
  factory $QrCodeUserEventCopyWith(QrCodeUserEvent value, $Res Function(QrCodeUserEvent) _then) = _$QrCodeUserEventCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$QrCodeUserEventCopyWithImpl<$Res>
    implements $QrCodeUserEventCopyWith<$Res> {
  _$QrCodeUserEventCopyWithImpl(this._self, this._then);

  final QrCodeUserEvent _self;
  final $Res Function(QrCodeUserEvent) _then;

/// Create a copy of QrCodeUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [QrCodeUserEvent].
extension QrCodeUserEventPatterns on QrCodeUserEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( QrCodeUserEventLoadUser value)?  loadUser,required TResult orElse(),}){
final _that = this;
switch (_that) {
case QrCodeUserEventLoadUser() when loadUser != null:
return loadUser(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( QrCodeUserEventLoadUser value)  loadUser,}){
final _that = this;
switch (_that) {
case QrCodeUserEventLoadUser():
return loadUser(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( QrCodeUserEventLoadUser value)?  loadUser,}){
final _that = this;
switch (_that) {
case QrCodeUserEventLoadUser() when loadUser != null:
return loadUser(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String userId)?  loadUser,required TResult orElse(),}) {final _that = this;
switch (_that) {
case QrCodeUserEventLoadUser() when loadUser != null:
return loadUser(_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String userId)  loadUser,}) {final _that = this;
switch (_that) {
case QrCodeUserEventLoadUser():
return loadUser(_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String userId)?  loadUser,}) {final _that = this;
switch (_that) {
case QrCodeUserEventLoadUser() when loadUser != null:
return loadUser(_that.userId);case _:
  return null;

}
}

}

/// @nodoc


class QrCodeUserEventLoadUser implements QrCodeUserEvent {
  const QrCodeUserEventLoadUser(this.userId);
  

@override final  String userId;

/// Create a copy of QrCodeUserEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QrCodeUserEventLoadUserCopyWith<QrCodeUserEventLoadUser> get copyWith => _$QrCodeUserEventLoadUserCopyWithImpl<QrCodeUserEventLoadUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QrCodeUserEventLoadUser&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'QrCodeUserEvent.loadUser(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $QrCodeUserEventLoadUserCopyWith<$Res> implements $QrCodeUserEventCopyWith<$Res> {
  factory $QrCodeUserEventLoadUserCopyWith(QrCodeUserEventLoadUser value, $Res Function(QrCodeUserEventLoadUser) _then) = _$QrCodeUserEventLoadUserCopyWithImpl;
@override @useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$QrCodeUserEventLoadUserCopyWithImpl<$Res>
    implements $QrCodeUserEventLoadUserCopyWith<$Res> {
  _$QrCodeUserEventLoadUserCopyWithImpl(this._self, this._then);

  final QrCodeUserEventLoadUser _self;
  final $Res Function(QrCodeUserEventLoadUser) _then;

/// Create a copy of QrCodeUserEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(QrCodeUserEventLoadUser(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$QrCodeUserState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QrCodeUserState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QrCodeUserState()';
}


}

/// @nodoc
class $QrCodeUserStateCopyWith<$Res>  {
$QrCodeUserStateCopyWith(QrCodeUserState _, $Res Function(QrCodeUserState) __);
}


/// Adds pattern-matching-related methods to [QrCodeUserState].
extension QrCodeUserStatePatterns on QrCodeUserState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( QrCodeUserStateInital value)?  initial,TResult Function( QrCodeUserStateLoading value)?  loading,TResult Function( QrCodeUserStateSuccess value)?  success,TResult Function( QrCodeUserStateError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case QrCodeUserStateInital() when initial != null:
return initial(_that);case QrCodeUserStateLoading() when loading != null:
return loading(_that);case QrCodeUserStateSuccess() when success != null:
return success(_that);case QrCodeUserStateError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( QrCodeUserStateInital value)  initial,required TResult Function( QrCodeUserStateLoading value)  loading,required TResult Function( QrCodeUserStateSuccess value)  success,required TResult Function( QrCodeUserStateError value)  error,}){
final _that = this;
switch (_that) {
case QrCodeUserStateInital():
return initial(_that);case QrCodeUserStateLoading():
return loading(_that);case QrCodeUserStateSuccess():
return success(_that);case QrCodeUserStateError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( QrCodeUserStateInital value)?  initial,TResult? Function( QrCodeUserStateLoading value)?  loading,TResult? Function( QrCodeUserStateSuccess value)?  success,TResult? Function( QrCodeUserStateError value)?  error,}){
final _that = this;
switch (_that) {
case QrCodeUserStateInital() when initial != null:
return initial(_that);case QrCodeUserStateLoading() when loading != null:
return loading(_that);case QrCodeUserStateSuccess() when success != null:
return success(_that);case QrCodeUserStateError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( User user)?  success,TResult Function( String errorMessage)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case QrCodeUserStateInital() when initial != null:
return initial();case QrCodeUserStateLoading() when loading != null:
return loading();case QrCodeUserStateSuccess() when success != null:
return success(_that.user);case QrCodeUserStateError() when error != null:
return error(_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( User user)  success,required TResult Function( String errorMessage)  error,}) {final _that = this;
switch (_that) {
case QrCodeUserStateInital():
return initial();case QrCodeUserStateLoading():
return loading();case QrCodeUserStateSuccess():
return success(_that.user);case QrCodeUserStateError():
return error(_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( User user)?  success,TResult? Function( String errorMessage)?  error,}) {final _that = this;
switch (_that) {
case QrCodeUserStateInital() when initial != null:
return initial();case QrCodeUserStateLoading() when loading != null:
return loading();case QrCodeUserStateSuccess() when success != null:
return success(_that.user);case QrCodeUserStateError() when error != null:
return error(_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class QrCodeUserStateInital implements QrCodeUserState {
  const QrCodeUserStateInital();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QrCodeUserStateInital);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QrCodeUserState.initial()';
}


}




/// @nodoc


class QrCodeUserStateLoading implements QrCodeUserState {
  const QrCodeUserStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QrCodeUserStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QrCodeUserState.loading()';
}


}




/// @nodoc


class QrCodeUserStateSuccess implements QrCodeUserState {
  const QrCodeUserStateSuccess(this.user);
  

 final  User user;

/// Create a copy of QrCodeUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QrCodeUserStateSuccessCopyWith<QrCodeUserStateSuccess> get copyWith => _$QrCodeUserStateSuccessCopyWithImpl<QrCodeUserStateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QrCodeUserStateSuccess&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'QrCodeUserState.success(user: $user)';
}


}

/// @nodoc
abstract mixin class $QrCodeUserStateSuccessCopyWith<$Res> implements $QrCodeUserStateCopyWith<$Res> {
  factory $QrCodeUserStateSuccessCopyWith(QrCodeUserStateSuccess value, $Res Function(QrCodeUserStateSuccess) _then) = _$QrCodeUserStateSuccessCopyWithImpl;
@useResult
$Res call({
 User user
});




}
/// @nodoc
class _$QrCodeUserStateSuccessCopyWithImpl<$Res>
    implements $QrCodeUserStateSuccessCopyWith<$Res> {
  _$QrCodeUserStateSuccessCopyWithImpl(this._self, this._then);

  final QrCodeUserStateSuccess _self;
  final $Res Function(QrCodeUserStateSuccess) _then;

/// Create a copy of QrCodeUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(QrCodeUserStateSuccess(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}


}

/// @nodoc


class QrCodeUserStateError implements QrCodeUserState {
  const QrCodeUserStateError(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of QrCodeUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QrCodeUserStateErrorCopyWith<QrCodeUserStateError> get copyWith => _$QrCodeUserStateErrorCopyWithImpl<QrCodeUserStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QrCodeUserStateError&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'QrCodeUserState.error(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $QrCodeUserStateErrorCopyWith<$Res> implements $QrCodeUserStateCopyWith<$Res> {
  factory $QrCodeUserStateErrorCopyWith(QrCodeUserStateError value, $Res Function(QrCodeUserStateError) _then) = _$QrCodeUserStateErrorCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$QrCodeUserStateErrorCopyWithImpl<$Res>
    implements $QrCodeUserStateErrorCopyWith<$Res> {
  _$QrCodeUserStateErrorCopyWithImpl(this._self, this._then);

  final QrCodeUserStateError _self;
  final $Res Function(QrCodeUserStateError) _then;

/// Create a copy of QrCodeUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(QrCodeUserStateError(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
