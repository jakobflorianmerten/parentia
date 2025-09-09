// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'load_users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoadUsersEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadUsersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadUsersEvent()';
}


}

/// @nodoc
class $LoadUsersEventCopyWith<$Res>  {
$LoadUsersEventCopyWith(LoadUsersEvent _, $Res Function(LoadUsersEvent) __);
}


/// Adds pattern-matching-related methods to [LoadUsersEvent].
extension LoadUsersEventPatterns on LoadUsersEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadUsers value)?  loadUsers,TResult Function( TextSearchUsers value)?  textSearchUsers,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadUsers() when loadUsers != null:
return loadUsers(_that);case TextSearchUsers() when textSearchUsers != null:
return textSearchUsers(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadUsers value)  loadUsers,required TResult Function( TextSearchUsers value)  textSearchUsers,}){
final _that = this;
switch (_that) {
case LoadUsers():
return loadUsers(_that);case TextSearchUsers():
return textSearchUsers(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadUsers value)?  loadUsers,TResult? Function( TextSearchUsers value)?  textSearchUsers,}){
final _that = this;
switch (_that) {
case LoadUsers() when loadUsers != null:
return loadUsers(_that);case TextSearchUsers() when textSearchUsers != null:
return textSearchUsers(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadUsers,TResult Function( String input)?  textSearchUsers,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadUsers() when loadUsers != null:
return loadUsers();case TextSearchUsers() when textSearchUsers != null:
return textSearchUsers(_that.input);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadUsers,required TResult Function( String input)  textSearchUsers,}) {final _that = this;
switch (_that) {
case LoadUsers():
return loadUsers();case TextSearchUsers():
return textSearchUsers(_that.input);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadUsers,TResult? Function( String input)?  textSearchUsers,}) {final _that = this;
switch (_that) {
case LoadUsers() when loadUsers != null:
return loadUsers();case TextSearchUsers() when textSearchUsers != null:
return textSearchUsers(_that.input);case _:
  return null;

}
}

}

/// @nodoc


class LoadUsers implements LoadUsersEvent {
  const LoadUsers();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadUsers);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadUsersEvent.loadUsers()';
}


}




/// @nodoc


class TextSearchUsers implements LoadUsersEvent {
  const TextSearchUsers(this.input);
  

 final  String input;

/// Create a copy of LoadUsersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TextSearchUsersCopyWith<TextSearchUsers> get copyWith => _$TextSearchUsersCopyWithImpl<TextSearchUsers>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextSearchUsers&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'LoadUsersEvent.textSearchUsers(input: $input)';
}


}

/// @nodoc
abstract mixin class $TextSearchUsersCopyWith<$Res> implements $LoadUsersEventCopyWith<$Res> {
  factory $TextSearchUsersCopyWith(TextSearchUsers value, $Res Function(TextSearchUsers) _then) = _$TextSearchUsersCopyWithImpl;
@useResult
$Res call({
 String input
});




}
/// @nodoc
class _$TextSearchUsersCopyWithImpl<$Res>
    implements $TextSearchUsersCopyWith<$Res> {
  _$TextSearchUsersCopyWithImpl(this._self, this._then);

  final TextSearchUsers _self;
  final $Res Function(TextSearchUsers) _then;

/// Create a copy of LoadUsersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(TextSearchUsers(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$LoadUsersState {

 bool get isLoading; Option<Either<UserFailures, List<User>>> get failureOrSuccess;
/// Create a copy of LoadUsersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadUsersStateCopyWith<LoadUsersState> get copyWith => _$LoadUsersStateCopyWithImpl<LoadUsersState>(this as LoadUsersState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadUsersState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.failureOrSuccess, failureOrSuccess) || other.failureOrSuccess == failureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,failureOrSuccess);

@override
String toString() {
  return 'LoadUsersState(isLoading: $isLoading, failureOrSuccess: $failureOrSuccess)';
}


}

/// @nodoc
abstract mixin class $LoadUsersStateCopyWith<$Res>  {
  factory $LoadUsersStateCopyWith(LoadUsersState value, $Res Function(LoadUsersState) _then) = _$LoadUsersStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, Option<Either<UserFailures, List<User>>> failureOrSuccess
});




}
/// @nodoc
class _$LoadUsersStateCopyWithImpl<$Res>
    implements $LoadUsersStateCopyWith<$Res> {
  _$LoadUsersStateCopyWithImpl(this._self, this._then);

  final LoadUsersState _self;
  final $Res Function(LoadUsersState) _then;

/// Create a copy of LoadUsersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? failureOrSuccess = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,failureOrSuccess: null == failureOrSuccess ? _self.failureOrSuccess : failureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<UserFailures, List<User>>>,
  ));
}

}


/// Adds pattern-matching-related methods to [LoadUsersState].
extension LoadUsersStatePatterns on LoadUsersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoadUsersState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadUsersState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoadUsersState value)  $default,){
final _that = this;
switch (_that) {
case _LoadUsersState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoadUsersState value)?  $default,){
final _that = this;
switch (_that) {
case _LoadUsersState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  Option<Either<UserFailures, List<User>>> failureOrSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadUsersState() when $default != null:
return $default(_that.isLoading,_that.failureOrSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  Option<Either<UserFailures, List<User>>> failureOrSuccess)  $default,) {final _that = this;
switch (_that) {
case _LoadUsersState():
return $default(_that.isLoading,_that.failureOrSuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  Option<Either<UserFailures, List<User>>> failureOrSuccess)?  $default,) {final _that = this;
switch (_that) {
case _LoadUsersState() when $default != null:
return $default(_that.isLoading,_that.failureOrSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _LoadUsersState implements LoadUsersState {
  const _LoadUsersState({required this.isLoading, required this.failureOrSuccess});
  

@override final  bool isLoading;
@override final  Option<Either<UserFailures, List<User>>> failureOrSuccess;

/// Create a copy of LoadUsersState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadUsersStateCopyWith<_LoadUsersState> get copyWith => __$LoadUsersStateCopyWithImpl<_LoadUsersState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadUsersState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.failureOrSuccess, failureOrSuccess) || other.failureOrSuccess == failureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,failureOrSuccess);

@override
String toString() {
  return 'LoadUsersState(isLoading: $isLoading, failureOrSuccess: $failureOrSuccess)';
}


}

/// @nodoc
abstract mixin class _$LoadUsersStateCopyWith<$Res> implements $LoadUsersStateCopyWith<$Res> {
  factory _$LoadUsersStateCopyWith(_LoadUsersState value, $Res Function(_LoadUsersState) _then) = __$LoadUsersStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, Option<Either<UserFailures, List<User>>> failureOrSuccess
});




}
/// @nodoc
class __$LoadUsersStateCopyWithImpl<$Res>
    implements _$LoadUsersStateCopyWith<$Res> {
  __$LoadUsersStateCopyWithImpl(this._self, this._then);

  final _LoadUsersState _self;
  final $Res Function(_LoadUsersState) _then;

/// Create a copy of LoadUsersState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? failureOrSuccess = null,}) {
  return _then(_LoadUsersState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,failureOrSuccess: null == failureOrSuccess ? _self.failureOrSuccess : failureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<UserFailures, List<User>>>,
  ));
}


}

// dart format on
