// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DeleteUserEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteUserEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeleteUserEvent()';
}


}

/// @nodoc
class $DeleteUserEventCopyWith<$Res>  {
$DeleteUserEventCopyWith(DeleteUserEvent _, $Res Function(DeleteUserEvent) __);
}


/// Adds pattern-matching-related methods to [DeleteUserEvent].
extension DeleteUserEventPatterns on DeleteUserEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DeleteUser value)?  deleteUser,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DeleteUser() when deleteUser != null:
return deleteUser(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DeleteUser value)  deleteUser,}){
final _that = this;
switch (_that) {
case DeleteUser():
return deleteUser(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DeleteUser value)?  deleteUser,}){
final _that = this;
switch (_that) {
case DeleteUser() when deleteUser != null:
return deleteUser(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  deleteUser,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DeleteUser() when deleteUser != null:
return deleteUser();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  deleteUser,}) {final _that = this;
switch (_that) {
case DeleteUser():
return deleteUser();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  deleteUser,}) {final _that = this;
switch (_that) {
case DeleteUser() when deleteUser != null:
return deleteUser();case _:
  return null;

}
}

}

/// @nodoc


class DeleteUser implements DeleteUserEvent {
  const DeleteUser();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteUser);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeleteUserEvent.deleteUser()';
}


}




/// @nodoc
mixin _$DeleteUserState {

 Option<Either<AuthFailure, Unit>> get failureOrSuccess; bool get isLoading; bool get needToReauthenticate;
/// Create a copy of DeleteUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteUserStateCopyWith<DeleteUserState> get copyWith => _$DeleteUserStateCopyWithImpl<DeleteUserState>(this as DeleteUserState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteUserState&&(identical(other.failureOrSuccess, failureOrSuccess) || other.failureOrSuccess == failureOrSuccess)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.needToReauthenticate, needToReauthenticate) || other.needToReauthenticate == needToReauthenticate));
}


@override
int get hashCode => Object.hash(runtimeType,failureOrSuccess,isLoading,needToReauthenticate);

@override
String toString() {
  return 'DeleteUserState(failureOrSuccess: $failureOrSuccess, isLoading: $isLoading, needToReauthenticate: $needToReauthenticate)';
}


}

/// @nodoc
abstract mixin class $DeleteUserStateCopyWith<$Res>  {
  factory $DeleteUserStateCopyWith(DeleteUserState value, $Res Function(DeleteUserState) _then) = _$DeleteUserStateCopyWithImpl;
@useResult
$Res call({
 Option<Either<AuthFailure, Unit>> failureOrSuccess, bool isLoading, bool needToReauthenticate
});




}
/// @nodoc
class _$DeleteUserStateCopyWithImpl<$Res>
    implements $DeleteUserStateCopyWith<$Res> {
  _$DeleteUserStateCopyWithImpl(this._self, this._then);

  final DeleteUserState _self;
  final $Res Function(DeleteUserState) _then;

/// Create a copy of DeleteUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? failureOrSuccess = null,Object? isLoading = null,Object? needToReauthenticate = null,}) {
  return _then(_self.copyWith(
failureOrSuccess: null == failureOrSuccess ? _self.failureOrSuccess : failureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<AuthFailure, Unit>>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,needToReauthenticate: null == needToReauthenticate ? _self.needToReauthenticate : needToReauthenticate // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteUserState].
extension DeleteUserStatePatterns on DeleteUserState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteUserState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteUserState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteUserState value)  $default,){
final _that = this;
switch (_that) {
case _DeleteUserState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteUserState value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteUserState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Option<Either<AuthFailure, Unit>> failureOrSuccess,  bool isLoading,  bool needToReauthenticate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeleteUserState() when $default != null:
return $default(_that.failureOrSuccess,_that.isLoading,_that.needToReauthenticate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Option<Either<AuthFailure, Unit>> failureOrSuccess,  bool isLoading,  bool needToReauthenticate)  $default,) {final _that = this;
switch (_that) {
case _DeleteUserState():
return $default(_that.failureOrSuccess,_that.isLoading,_that.needToReauthenticate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Option<Either<AuthFailure, Unit>> failureOrSuccess,  bool isLoading,  bool needToReauthenticate)?  $default,) {final _that = this;
switch (_that) {
case _DeleteUserState() when $default != null:
return $default(_that.failureOrSuccess,_that.isLoading,_that.needToReauthenticate);case _:
  return null;

}
}

}

/// @nodoc


class _DeleteUserState implements DeleteUserState {
  const _DeleteUserState({required this.failureOrSuccess, required this.isLoading, required this.needToReauthenticate});
  

@override final  Option<Either<AuthFailure, Unit>> failureOrSuccess;
@override final  bool isLoading;
@override final  bool needToReauthenticate;

/// Create a copy of DeleteUserState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteUserStateCopyWith<_DeleteUserState> get copyWith => __$DeleteUserStateCopyWithImpl<_DeleteUserState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteUserState&&(identical(other.failureOrSuccess, failureOrSuccess) || other.failureOrSuccess == failureOrSuccess)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.needToReauthenticate, needToReauthenticate) || other.needToReauthenticate == needToReauthenticate));
}


@override
int get hashCode => Object.hash(runtimeType,failureOrSuccess,isLoading,needToReauthenticate);

@override
String toString() {
  return 'DeleteUserState(failureOrSuccess: $failureOrSuccess, isLoading: $isLoading, needToReauthenticate: $needToReauthenticate)';
}


}

/// @nodoc
abstract mixin class _$DeleteUserStateCopyWith<$Res> implements $DeleteUserStateCopyWith<$Res> {
  factory _$DeleteUserStateCopyWith(_DeleteUserState value, $Res Function(_DeleteUserState) _then) = __$DeleteUserStateCopyWithImpl;
@override @useResult
$Res call({
 Option<Either<AuthFailure, Unit>> failureOrSuccess, bool isLoading, bool needToReauthenticate
});




}
/// @nodoc
class __$DeleteUserStateCopyWithImpl<$Res>
    implements _$DeleteUserStateCopyWith<$Res> {
  __$DeleteUserStateCopyWithImpl(this._self, this._then);

  final _DeleteUserState _self;
  final $Res Function(_DeleteUserState) _then;

/// Create a copy of DeleteUserState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failureOrSuccess = null,Object? isLoading = null,Object? needToReauthenticate = null,}) {
  return _then(_DeleteUserState(
failureOrSuccess: null == failureOrSuccess ? _self.failureOrSuccess : failureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<AuthFailure, Unit>>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,needToReauthenticate: null == needToReauthenticate ? _self.needToReauthenticate : needToReauthenticate // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
