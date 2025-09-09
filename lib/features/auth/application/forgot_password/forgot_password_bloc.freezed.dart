// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ForgotPasswordEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordEvent()';
}


}

/// @nodoc
class $ForgotPasswordEventCopyWith<$Res>  {
$ForgotPasswordEventCopyWith(ForgotPasswordEvent _, $Res Function(ForgotPasswordEvent) __);
}


/// Adds pattern-matching-related methods to [ForgotPasswordEvent].
extension ForgotPasswordEventPatterns on ForgotPasswordEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ForgotPasswordEmailChanged value)?  emailChanged,TResult Function( ForgotPasswordSubmit value)?  submit,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ForgotPasswordEmailChanged() when emailChanged != null:
return emailChanged(_that);case ForgotPasswordSubmit() when submit != null:
return submit(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ForgotPasswordEmailChanged value)  emailChanged,required TResult Function( ForgotPasswordSubmit value)  submit,}){
final _that = this;
switch (_that) {
case ForgotPasswordEmailChanged():
return emailChanged(_that);case ForgotPasswordSubmit():
return submit(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ForgotPasswordEmailChanged value)?  emailChanged,TResult? Function( ForgotPasswordSubmit value)?  submit,}){
final _that = this;
switch (_that) {
case ForgotPasswordEmailChanged() when emailChanged != null:
return emailChanged(_that);case ForgotPasswordSubmit() when submit != null:
return submit(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email)?  emailChanged,TResult Function()?  submit,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ForgotPasswordEmailChanged() when emailChanged != null:
return emailChanged(_that.email);case ForgotPasswordSubmit() when submit != null:
return submit();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email)  emailChanged,required TResult Function()  submit,}) {final _that = this;
switch (_that) {
case ForgotPasswordEmailChanged():
return emailChanged(_that.email);case ForgotPasswordSubmit():
return submit();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email)?  emailChanged,TResult? Function()?  submit,}) {final _that = this;
switch (_that) {
case ForgotPasswordEmailChanged() when emailChanged != null:
return emailChanged(_that.email);case ForgotPasswordSubmit() when submit != null:
return submit();case _:
  return null;

}
}

}

/// @nodoc


class ForgotPasswordEmailChanged implements ForgotPasswordEvent {
  const ForgotPasswordEmailChanged(this.email);
  

 final  String email;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotPasswordEmailChangedCopyWith<ForgotPasswordEmailChanged> get copyWith => _$ForgotPasswordEmailChangedCopyWithImpl<ForgotPasswordEmailChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordEmailChanged&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'ForgotPasswordEvent.emailChanged(email: $email)';
}


}

/// @nodoc
abstract mixin class $ForgotPasswordEmailChangedCopyWith<$Res> implements $ForgotPasswordEventCopyWith<$Res> {
  factory $ForgotPasswordEmailChangedCopyWith(ForgotPasswordEmailChanged value, $Res Function(ForgotPasswordEmailChanged) _then) = _$ForgotPasswordEmailChangedCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$ForgotPasswordEmailChangedCopyWithImpl<$Res>
    implements $ForgotPasswordEmailChangedCopyWith<$Res> {
  _$ForgotPasswordEmailChangedCopyWithImpl(this._self, this._then);

  final ForgotPasswordEmailChanged _self;
  final $Res Function(ForgotPasswordEmailChanged) _then;

/// Create a copy of ForgotPasswordEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(ForgotPasswordEmailChanged(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ForgotPasswordSubmit implements ForgotPasswordEvent {
  const ForgotPasswordSubmit();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordSubmit);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordEvent.submit()';
}


}




/// @nodoc
mixin _$ForgotPasswordState {

 Email get email; bool get isLoading; Option<Either<AuthFailure, Unit>> get failureOrSuccess;
/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith => _$ForgotPasswordStateCopyWithImpl<ForgotPasswordState>(this as ForgotPasswordState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordState&&(identical(other.email, email) || other.email == email)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.failureOrSuccess, failureOrSuccess) || other.failureOrSuccess == failureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,email,isLoading,failureOrSuccess);

@override
String toString() {
  return 'ForgotPasswordState(email: $email, isLoading: $isLoading, failureOrSuccess: $failureOrSuccess)';
}


}

/// @nodoc
abstract mixin class $ForgotPasswordStateCopyWith<$Res>  {
  factory $ForgotPasswordStateCopyWith(ForgotPasswordState value, $Res Function(ForgotPasswordState) _then) = _$ForgotPasswordStateCopyWithImpl;
@useResult
$Res call({
 Email email, bool isLoading, Option<Either<AuthFailure, Unit>> failureOrSuccess
});




}
/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._self, this._then);

  final ForgotPasswordState _self;
  final $Res Function(ForgotPasswordState) _then;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? isLoading = null,Object? failureOrSuccess = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as Email,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,failureOrSuccess: null == failureOrSuccess ? _self.failureOrSuccess : failureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<AuthFailure, Unit>>,
  ));
}

}


/// Adds pattern-matching-related methods to [ForgotPasswordState].
extension ForgotPasswordStatePatterns on ForgotPasswordState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForgotPasswordState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForgotPasswordState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForgotPasswordState value)  $default,){
final _that = this;
switch (_that) {
case _ForgotPasswordState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForgotPasswordState value)?  $default,){
final _that = this;
switch (_that) {
case _ForgotPasswordState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Email email,  bool isLoading,  Option<Either<AuthFailure, Unit>> failureOrSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForgotPasswordState() when $default != null:
return $default(_that.email,_that.isLoading,_that.failureOrSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Email email,  bool isLoading,  Option<Either<AuthFailure, Unit>> failureOrSuccess)  $default,) {final _that = this;
switch (_that) {
case _ForgotPasswordState():
return $default(_that.email,_that.isLoading,_that.failureOrSuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Email email,  bool isLoading,  Option<Either<AuthFailure, Unit>> failureOrSuccess)?  $default,) {final _that = this;
switch (_that) {
case _ForgotPasswordState() when $default != null:
return $default(_that.email,_that.isLoading,_that.failureOrSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _ForgotPasswordState implements ForgotPasswordState {
  const _ForgotPasswordState({required this.email, required this.isLoading, required this.failureOrSuccess});
  

@override final  Email email;
@override final  bool isLoading;
@override final  Option<Either<AuthFailure, Unit>> failureOrSuccess;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgotPasswordStateCopyWith<_ForgotPasswordState> get copyWith => __$ForgotPasswordStateCopyWithImpl<_ForgotPasswordState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgotPasswordState&&(identical(other.email, email) || other.email == email)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.failureOrSuccess, failureOrSuccess) || other.failureOrSuccess == failureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,email,isLoading,failureOrSuccess);

@override
String toString() {
  return 'ForgotPasswordState(email: $email, isLoading: $isLoading, failureOrSuccess: $failureOrSuccess)';
}


}

/// @nodoc
abstract mixin class _$ForgotPasswordStateCopyWith<$Res> implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$ForgotPasswordStateCopyWith(_ForgotPasswordState value, $Res Function(_ForgotPasswordState) _then) = __$ForgotPasswordStateCopyWithImpl;
@override @useResult
$Res call({
 Email email, bool isLoading, Option<Either<AuthFailure, Unit>> failureOrSuccess
});




}
/// @nodoc
class __$ForgotPasswordStateCopyWithImpl<$Res>
    implements _$ForgotPasswordStateCopyWith<$Res> {
  __$ForgotPasswordStateCopyWithImpl(this._self, this._then);

  final _ForgotPasswordState _self;
  final $Res Function(_ForgotPasswordState) _then;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? isLoading = null,Object? failureOrSuccess = null,}) {
  return _then(_ForgotPasswordState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as Email,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,failureOrSuccess: null == failureOrSuccess ? _self.failureOrSuccess : failureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<AuthFailure, Unit>>,
  ));
}


}

// dart format on
