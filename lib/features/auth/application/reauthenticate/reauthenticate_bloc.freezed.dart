// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reauthenticate_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReauthenticateEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReauthenticateEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReauthenticateEvent()';
}


}

/// @nodoc
class $ReauthenticateEventCopyWith<$Res>  {
$ReauthenticateEventCopyWith(ReauthenticateEvent _, $Res Function(ReauthenticateEvent) __);
}


/// Adds pattern-matching-related methods to [ReauthenticateEvent].
extension ReauthenticateEventPatterns on ReauthenticateEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ReauthenticateEventEmailUpdated value)?  emailUpdated,TResult Function( ReauthenticateEventPasswordUpdated value)?  passwordUpdated,TResult Function( ReauthenticateEventSave value)?  save,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ReauthenticateEventEmailUpdated() when emailUpdated != null:
return emailUpdated(_that);case ReauthenticateEventPasswordUpdated() when passwordUpdated != null:
return passwordUpdated(_that);case ReauthenticateEventSave() when save != null:
return save(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ReauthenticateEventEmailUpdated value)  emailUpdated,required TResult Function( ReauthenticateEventPasswordUpdated value)  passwordUpdated,required TResult Function( ReauthenticateEventSave value)  save,}){
final _that = this;
switch (_that) {
case ReauthenticateEventEmailUpdated():
return emailUpdated(_that);case ReauthenticateEventPasswordUpdated():
return passwordUpdated(_that);case ReauthenticateEventSave():
return save(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ReauthenticateEventEmailUpdated value)?  emailUpdated,TResult? Function( ReauthenticateEventPasswordUpdated value)?  passwordUpdated,TResult? Function( ReauthenticateEventSave value)?  save,}){
final _that = this;
switch (_that) {
case ReauthenticateEventEmailUpdated() when emailUpdated != null:
return emailUpdated(_that);case ReauthenticateEventPasswordUpdated() when passwordUpdated != null:
return passwordUpdated(_that);case ReauthenticateEventSave() when save != null:
return save(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email)?  emailUpdated,TResult Function( String password)?  passwordUpdated,TResult Function()?  save,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ReauthenticateEventEmailUpdated() when emailUpdated != null:
return emailUpdated(_that.email);case ReauthenticateEventPasswordUpdated() when passwordUpdated != null:
return passwordUpdated(_that.password);case ReauthenticateEventSave() when save != null:
return save();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email)  emailUpdated,required TResult Function( String password)  passwordUpdated,required TResult Function()  save,}) {final _that = this;
switch (_that) {
case ReauthenticateEventEmailUpdated():
return emailUpdated(_that.email);case ReauthenticateEventPasswordUpdated():
return passwordUpdated(_that.password);case ReauthenticateEventSave():
return save();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email)?  emailUpdated,TResult? Function( String password)?  passwordUpdated,TResult? Function()?  save,}) {final _that = this;
switch (_that) {
case ReauthenticateEventEmailUpdated() when emailUpdated != null:
return emailUpdated(_that.email);case ReauthenticateEventPasswordUpdated() when passwordUpdated != null:
return passwordUpdated(_that.password);case ReauthenticateEventSave() when save != null:
return save();case _:
  return null;

}
}

}

/// @nodoc


class ReauthenticateEventEmailUpdated implements ReauthenticateEvent {
  const ReauthenticateEventEmailUpdated(this.email);
  

 final  String email;

/// Create a copy of ReauthenticateEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReauthenticateEventEmailUpdatedCopyWith<ReauthenticateEventEmailUpdated> get copyWith => _$ReauthenticateEventEmailUpdatedCopyWithImpl<ReauthenticateEventEmailUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReauthenticateEventEmailUpdated&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'ReauthenticateEvent.emailUpdated(email: $email)';
}


}

/// @nodoc
abstract mixin class $ReauthenticateEventEmailUpdatedCopyWith<$Res> implements $ReauthenticateEventCopyWith<$Res> {
  factory $ReauthenticateEventEmailUpdatedCopyWith(ReauthenticateEventEmailUpdated value, $Res Function(ReauthenticateEventEmailUpdated) _then) = _$ReauthenticateEventEmailUpdatedCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$ReauthenticateEventEmailUpdatedCopyWithImpl<$Res>
    implements $ReauthenticateEventEmailUpdatedCopyWith<$Res> {
  _$ReauthenticateEventEmailUpdatedCopyWithImpl(this._self, this._then);

  final ReauthenticateEventEmailUpdated _self;
  final $Res Function(ReauthenticateEventEmailUpdated) _then;

/// Create a copy of ReauthenticateEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(ReauthenticateEventEmailUpdated(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ReauthenticateEventPasswordUpdated implements ReauthenticateEvent {
  const ReauthenticateEventPasswordUpdated(this.password);
  

 final  String password;

/// Create a copy of ReauthenticateEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReauthenticateEventPasswordUpdatedCopyWith<ReauthenticateEventPasswordUpdated> get copyWith => _$ReauthenticateEventPasswordUpdatedCopyWithImpl<ReauthenticateEventPasswordUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReauthenticateEventPasswordUpdated&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString() {
  return 'ReauthenticateEvent.passwordUpdated(password: $password)';
}


}

/// @nodoc
abstract mixin class $ReauthenticateEventPasswordUpdatedCopyWith<$Res> implements $ReauthenticateEventCopyWith<$Res> {
  factory $ReauthenticateEventPasswordUpdatedCopyWith(ReauthenticateEventPasswordUpdated value, $Res Function(ReauthenticateEventPasswordUpdated) _then) = _$ReauthenticateEventPasswordUpdatedCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class _$ReauthenticateEventPasswordUpdatedCopyWithImpl<$Res>
    implements $ReauthenticateEventPasswordUpdatedCopyWith<$Res> {
  _$ReauthenticateEventPasswordUpdatedCopyWithImpl(this._self, this._then);

  final ReauthenticateEventPasswordUpdated _self;
  final $Res Function(ReauthenticateEventPasswordUpdated) _then;

/// Create a copy of ReauthenticateEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(ReauthenticateEventPasswordUpdated(
null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ReauthenticateEventSave implements ReauthenticateEvent {
  const ReauthenticateEventSave();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReauthenticateEventSave);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ReauthenticateEvent.save()';
}


}




/// @nodoc
mixin _$ReauthenticateState {

 bool get isLoading; bool get showErrorMessages; Password get password; Email get email; Option<Either<AuthFailure, Unit>> get failureOrSuccess;
/// Create a copy of ReauthenticateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReauthenticateStateCopyWith<ReauthenticateState> get copyWith => _$ReauthenticateStateCopyWithImpl<ReauthenticateState>(this as ReauthenticateState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReauthenticateState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.showErrorMessages, showErrorMessages) || other.showErrorMessages == showErrorMessages)&&(identical(other.password, password) || other.password == password)&&(identical(other.email, email) || other.email == email)&&(identical(other.failureOrSuccess, failureOrSuccess) || other.failureOrSuccess == failureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,showErrorMessages,password,email,failureOrSuccess);

@override
String toString() {
  return 'ReauthenticateState(isLoading: $isLoading, showErrorMessages: $showErrorMessages, password: $password, email: $email, failureOrSuccess: $failureOrSuccess)';
}


}

/// @nodoc
abstract mixin class $ReauthenticateStateCopyWith<$Res>  {
  factory $ReauthenticateStateCopyWith(ReauthenticateState value, $Res Function(ReauthenticateState) _then) = _$ReauthenticateStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool showErrorMessages, Password password, Email email, Option<Either<AuthFailure, Unit>> failureOrSuccess
});




}
/// @nodoc
class _$ReauthenticateStateCopyWithImpl<$Res>
    implements $ReauthenticateStateCopyWith<$Res> {
  _$ReauthenticateStateCopyWithImpl(this._self, this._then);

  final ReauthenticateState _self;
  final $Res Function(ReauthenticateState) _then;

/// Create a copy of ReauthenticateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? showErrorMessages = null,Object? password = null,Object? email = null,Object? failureOrSuccess = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,showErrorMessages: null == showErrorMessages ? _self.showErrorMessages : showErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as Email,failureOrSuccess: null == failureOrSuccess ? _self.failureOrSuccess : failureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<AuthFailure, Unit>>,
  ));
}

}


/// Adds pattern-matching-related methods to [ReauthenticateState].
extension ReauthenticateStatePatterns on ReauthenticateState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReauthenticateState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReauthenticateState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReauthenticateState value)  $default,){
final _that = this;
switch (_that) {
case _ReauthenticateState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReauthenticateState value)?  $default,){
final _that = this;
switch (_that) {
case _ReauthenticateState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool showErrorMessages,  Password password,  Email email,  Option<Either<AuthFailure, Unit>> failureOrSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReauthenticateState() when $default != null:
return $default(_that.isLoading,_that.showErrorMessages,_that.password,_that.email,_that.failureOrSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool showErrorMessages,  Password password,  Email email,  Option<Either<AuthFailure, Unit>> failureOrSuccess)  $default,) {final _that = this;
switch (_that) {
case _ReauthenticateState():
return $default(_that.isLoading,_that.showErrorMessages,_that.password,_that.email,_that.failureOrSuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool showErrorMessages,  Password password,  Email email,  Option<Either<AuthFailure, Unit>> failureOrSuccess)?  $default,) {final _that = this;
switch (_that) {
case _ReauthenticateState() when $default != null:
return $default(_that.isLoading,_that.showErrorMessages,_that.password,_that.email,_that.failureOrSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _ReauthenticateState implements ReauthenticateState {
  const _ReauthenticateState({required this.isLoading, required this.showErrorMessages, required this.password, required this.email, required this.failureOrSuccess});
  

@override final  bool isLoading;
@override final  bool showErrorMessages;
@override final  Password password;
@override final  Email email;
@override final  Option<Either<AuthFailure, Unit>> failureOrSuccess;

/// Create a copy of ReauthenticateState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReauthenticateStateCopyWith<_ReauthenticateState> get copyWith => __$ReauthenticateStateCopyWithImpl<_ReauthenticateState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReauthenticateState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.showErrorMessages, showErrorMessages) || other.showErrorMessages == showErrorMessages)&&(identical(other.password, password) || other.password == password)&&(identical(other.email, email) || other.email == email)&&(identical(other.failureOrSuccess, failureOrSuccess) || other.failureOrSuccess == failureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,showErrorMessages,password,email,failureOrSuccess);

@override
String toString() {
  return 'ReauthenticateState(isLoading: $isLoading, showErrorMessages: $showErrorMessages, password: $password, email: $email, failureOrSuccess: $failureOrSuccess)';
}


}

/// @nodoc
abstract mixin class _$ReauthenticateStateCopyWith<$Res> implements $ReauthenticateStateCopyWith<$Res> {
  factory _$ReauthenticateStateCopyWith(_ReauthenticateState value, $Res Function(_ReauthenticateState) _then) = __$ReauthenticateStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool showErrorMessages, Password password, Email email, Option<Either<AuthFailure, Unit>> failureOrSuccess
});




}
/// @nodoc
class __$ReauthenticateStateCopyWithImpl<$Res>
    implements _$ReauthenticateStateCopyWith<$Res> {
  __$ReauthenticateStateCopyWithImpl(this._self, this._then);

  final _ReauthenticateState _self;
  final $Res Function(_ReauthenticateState) _then;

/// Create a copy of ReauthenticateState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? showErrorMessages = null,Object? password = null,Object? email = null,Object? failureOrSuccess = null,}) {
  return _then(_ReauthenticateState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,showErrorMessages: null == showErrorMessages ? _self.showErrorMessages : showErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as Email,failureOrSuccess: null == failureOrSuccess ? _self.failureOrSuccess : failureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<AuthFailure, Unit>>,
  ));
}


}

// dart format on
