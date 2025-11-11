// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_current_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChangeCurrentUserEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeCurrentUserEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChangeCurrentUserEvent()';
}


}

/// @nodoc
class $ChangeCurrentUserEventCopyWith<$Res>  {
$ChangeCurrentUserEventCopyWith(ChangeCurrentUserEvent _, $Res Function(ChangeCurrentUserEvent) __);
}


/// Adds pattern-matching-related methods to [ChangeCurrentUserEvent].
extension ChangeCurrentUserEventPatterns on ChangeCurrentUserEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChangeCurrentUserEventChangeName value)?  changeName,TResult Function( ChangeCurrentUserEventChangeEmail value)?  changeEmail,TResult Function( ChangeCurrentUserEventChangeUsername value)?  changeUsername,TResult Function( ChangeCurrentUserEventChangeProfilePicture value)?  changeProfilePicture,TResult Function( ChangeCurrentUserEventSaveChanges value)?  saveChanges,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChangeCurrentUserEventChangeName() when changeName != null:
return changeName(_that);case ChangeCurrentUserEventChangeEmail() when changeEmail != null:
return changeEmail(_that);case ChangeCurrentUserEventChangeUsername() when changeUsername != null:
return changeUsername(_that);case ChangeCurrentUserEventChangeProfilePicture() when changeProfilePicture != null:
return changeProfilePicture(_that);case ChangeCurrentUserEventSaveChanges() when saveChanges != null:
return saveChanges(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChangeCurrentUserEventChangeName value)  changeName,required TResult Function( ChangeCurrentUserEventChangeEmail value)  changeEmail,required TResult Function( ChangeCurrentUserEventChangeUsername value)  changeUsername,required TResult Function( ChangeCurrentUserEventChangeProfilePicture value)  changeProfilePicture,required TResult Function( ChangeCurrentUserEventSaveChanges value)  saveChanges,}){
final _that = this;
switch (_that) {
case ChangeCurrentUserEventChangeName():
return changeName(_that);case ChangeCurrentUserEventChangeEmail():
return changeEmail(_that);case ChangeCurrentUserEventChangeUsername():
return changeUsername(_that);case ChangeCurrentUserEventChangeProfilePicture():
return changeProfilePicture(_that);case ChangeCurrentUserEventSaveChanges():
return saveChanges(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChangeCurrentUserEventChangeName value)?  changeName,TResult? Function( ChangeCurrentUserEventChangeEmail value)?  changeEmail,TResult? Function( ChangeCurrentUserEventChangeUsername value)?  changeUsername,TResult? Function( ChangeCurrentUserEventChangeProfilePicture value)?  changeProfilePicture,TResult? Function( ChangeCurrentUserEventSaveChanges value)?  saveChanges,}){
final _that = this;
switch (_that) {
case ChangeCurrentUserEventChangeName() when changeName != null:
return changeName(_that);case ChangeCurrentUserEventChangeEmail() when changeEmail != null:
return changeEmail(_that);case ChangeCurrentUserEventChangeUsername() when changeUsername != null:
return changeUsername(_that);case ChangeCurrentUserEventChangeProfilePicture() when changeProfilePicture != null:
return changeProfilePicture(_that);case ChangeCurrentUserEventSaveChanges() when saveChanges != null:
return saveChanges(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String name)?  changeName,TResult Function( String email)?  changeEmail,TResult Function( String username)?  changeUsername,TResult Function( File file)?  changeProfilePicture,TResult Function()?  saveChanges,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChangeCurrentUserEventChangeName() when changeName != null:
return changeName(_that.name);case ChangeCurrentUserEventChangeEmail() when changeEmail != null:
return changeEmail(_that.email);case ChangeCurrentUserEventChangeUsername() when changeUsername != null:
return changeUsername(_that.username);case ChangeCurrentUserEventChangeProfilePicture() when changeProfilePicture != null:
return changeProfilePicture(_that.file);case ChangeCurrentUserEventSaveChanges() when saveChanges != null:
return saveChanges();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String name)  changeName,required TResult Function( String email)  changeEmail,required TResult Function( String username)  changeUsername,required TResult Function( File file)  changeProfilePicture,required TResult Function()  saveChanges,}) {final _that = this;
switch (_that) {
case ChangeCurrentUserEventChangeName():
return changeName(_that.name);case ChangeCurrentUserEventChangeEmail():
return changeEmail(_that.email);case ChangeCurrentUserEventChangeUsername():
return changeUsername(_that.username);case ChangeCurrentUserEventChangeProfilePicture():
return changeProfilePicture(_that.file);case ChangeCurrentUserEventSaveChanges():
return saveChanges();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String name)?  changeName,TResult? Function( String email)?  changeEmail,TResult? Function( String username)?  changeUsername,TResult? Function( File file)?  changeProfilePicture,TResult? Function()?  saveChanges,}) {final _that = this;
switch (_that) {
case ChangeCurrentUserEventChangeName() when changeName != null:
return changeName(_that.name);case ChangeCurrentUserEventChangeEmail() when changeEmail != null:
return changeEmail(_that.email);case ChangeCurrentUserEventChangeUsername() when changeUsername != null:
return changeUsername(_that.username);case ChangeCurrentUserEventChangeProfilePicture() when changeProfilePicture != null:
return changeProfilePicture(_that.file);case ChangeCurrentUserEventSaveChanges() when saveChanges != null:
return saveChanges();case _:
  return null;

}
}

}

/// @nodoc


class ChangeCurrentUserEventChangeName implements ChangeCurrentUserEvent {
  const ChangeCurrentUserEventChangeName(this.name);
  

 final  String name;

/// Create a copy of ChangeCurrentUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeCurrentUserEventChangeNameCopyWith<ChangeCurrentUserEventChangeName> get copyWith => _$ChangeCurrentUserEventChangeNameCopyWithImpl<ChangeCurrentUserEventChangeName>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeCurrentUserEventChangeName&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'ChangeCurrentUserEvent.changeName(name: $name)';
}


}

/// @nodoc
abstract mixin class $ChangeCurrentUserEventChangeNameCopyWith<$Res> implements $ChangeCurrentUserEventCopyWith<$Res> {
  factory $ChangeCurrentUserEventChangeNameCopyWith(ChangeCurrentUserEventChangeName value, $Res Function(ChangeCurrentUserEventChangeName) _then) = _$ChangeCurrentUserEventChangeNameCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$ChangeCurrentUserEventChangeNameCopyWithImpl<$Res>
    implements $ChangeCurrentUserEventChangeNameCopyWith<$Res> {
  _$ChangeCurrentUserEventChangeNameCopyWithImpl(this._self, this._then);

  final ChangeCurrentUserEventChangeName _self;
  final $Res Function(ChangeCurrentUserEventChangeName) _then;

/// Create a copy of ChangeCurrentUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(ChangeCurrentUserEventChangeName(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ChangeCurrentUserEventChangeEmail implements ChangeCurrentUserEvent {
  const ChangeCurrentUserEventChangeEmail(this.email);
  

 final  String email;

/// Create a copy of ChangeCurrentUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeCurrentUserEventChangeEmailCopyWith<ChangeCurrentUserEventChangeEmail> get copyWith => _$ChangeCurrentUserEventChangeEmailCopyWithImpl<ChangeCurrentUserEventChangeEmail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeCurrentUserEventChangeEmail&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'ChangeCurrentUserEvent.changeEmail(email: $email)';
}


}

/// @nodoc
abstract mixin class $ChangeCurrentUserEventChangeEmailCopyWith<$Res> implements $ChangeCurrentUserEventCopyWith<$Res> {
  factory $ChangeCurrentUserEventChangeEmailCopyWith(ChangeCurrentUserEventChangeEmail value, $Res Function(ChangeCurrentUserEventChangeEmail) _then) = _$ChangeCurrentUserEventChangeEmailCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$ChangeCurrentUserEventChangeEmailCopyWithImpl<$Res>
    implements $ChangeCurrentUserEventChangeEmailCopyWith<$Res> {
  _$ChangeCurrentUserEventChangeEmailCopyWithImpl(this._self, this._then);

  final ChangeCurrentUserEventChangeEmail _self;
  final $Res Function(ChangeCurrentUserEventChangeEmail) _then;

/// Create a copy of ChangeCurrentUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(ChangeCurrentUserEventChangeEmail(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ChangeCurrentUserEventChangeUsername implements ChangeCurrentUserEvent {
  const ChangeCurrentUserEventChangeUsername(this.username);
  

 final  String username;

/// Create a copy of ChangeCurrentUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeCurrentUserEventChangeUsernameCopyWith<ChangeCurrentUserEventChangeUsername> get copyWith => _$ChangeCurrentUserEventChangeUsernameCopyWithImpl<ChangeCurrentUserEventChangeUsername>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeCurrentUserEventChangeUsername&&(identical(other.username, username) || other.username == username));
}


@override
int get hashCode => Object.hash(runtimeType,username);

@override
String toString() {
  return 'ChangeCurrentUserEvent.changeUsername(username: $username)';
}


}

/// @nodoc
abstract mixin class $ChangeCurrentUserEventChangeUsernameCopyWith<$Res> implements $ChangeCurrentUserEventCopyWith<$Res> {
  factory $ChangeCurrentUserEventChangeUsernameCopyWith(ChangeCurrentUserEventChangeUsername value, $Res Function(ChangeCurrentUserEventChangeUsername) _then) = _$ChangeCurrentUserEventChangeUsernameCopyWithImpl;
@useResult
$Res call({
 String username
});




}
/// @nodoc
class _$ChangeCurrentUserEventChangeUsernameCopyWithImpl<$Res>
    implements $ChangeCurrentUserEventChangeUsernameCopyWith<$Res> {
  _$ChangeCurrentUserEventChangeUsernameCopyWithImpl(this._self, this._then);

  final ChangeCurrentUserEventChangeUsername _self;
  final $Res Function(ChangeCurrentUserEventChangeUsername) _then;

/// Create a copy of ChangeCurrentUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? username = null,}) {
  return _then(ChangeCurrentUserEventChangeUsername(
null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ChangeCurrentUserEventChangeProfilePicture implements ChangeCurrentUserEvent {
  const ChangeCurrentUserEventChangeProfilePicture(this.file);
  

 final  File file;

/// Create a copy of ChangeCurrentUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeCurrentUserEventChangeProfilePictureCopyWith<ChangeCurrentUserEventChangeProfilePicture> get copyWith => _$ChangeCurrentUserEventChangeProfilePictureCopyWithImpl<ChangeCurrentUserEventChangeProfilePicture>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeCurrentUserEventChangeProfilePicture&&(identical(other.file, file) || other.file == file));
}


@override
int get hashCode => Object.hash(runtimeType,file);

@override
String toString() {
  return 'ChangeCurrentUserEvent.changeProfilePicture(file: $file)';
}


}

/// @nodoc
abstract mixin class $ChangeCurrentUserEventChangeProfilePictureCopyWith<$Res> implements $ChangeCurrentUserEventCopyWith<$Res> {
  factory $ChangeCurrentUserEventChangeProfilePictureCopyWith(ChangeCurrentUserEventChangeProfilePicture value, $Res Function(ChangeCurrentUserEventChangeProfilePicture) _then) = _$ChangeCurrentUserEventChangeProfilePictureCopyWithImpl;
@useResult
$Res call({
 File file
});




}
/// @nodoc
class _$ChangeCurrentUserEventChangeProfilePictureCopyWithImpl<$Res>
    implements $ChangeCurrentUserEventChangeProfilePictureCopyWith<$Res> {
  _$ChangeCurrentUserEventChangeProfilePictureCopyWithImpl(this._self, this._then);

  final ChangeCurrentUserEventChangeProfilePicture _self;
  final $Res Function(ChangeCurrentUserEventChangeProfilePicture) _then;

/// Create a copy of ChangeCurrentUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? file = null,}) {
  return _then(ChangeCurrentUserEventChangeProfilePicture(
null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as File,
  ));
}


}

/// @nodoc


class ChangeCurrentUserEventSaveChanges implements ChangeCurrentUserEvent {
  const ChangeCurrentUserEventSaveChanges();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeCurrentUserEventSaveChanges);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChangeCurrentUserEvent.saveChanges()';
}


}




/// @nodoc
mixin _$ChangeCurrentUserState {

 bool get isLoading; bool get showValueErrors; Option<FullName> get name; Option<Username> get username; Option<Email> get email; Option<File> get profilePicture; Option<Either<UserFailures, Unit>> get failureOrSuccess;
/// Create a copy of ChangeCurrentUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeCurrentUserStateCopyWith<ChangeCurrentUserState> get copyWith => _$ChangeCurrentUserStateCopyWithImpl<ChangeCurrentUserState>(this as ChangeCurrentUserState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeCurrentUserState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.showValueErrors, showValueErrors) || other.showValueErrors == showValueErrors)&&(identical(other.name, name) || other.name == name)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.profilePicture, profilePicture) || other.profilePicture == profilePicture)&&(identical(other.failureOrSuccess, failureOrSuccess) || other.failureOrSuccess == failureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,showValueErrors,name,username,email,profilePicture,failureOrSuccess);

@override
String toString() {
  return 'ChangeCurrentUserState(isLoading: $isLoading, showValueErrors: $showValueErrors, name: $name, username: $username, email: $email, profilePicture: $profilePicture, failureOrSuccess: $failureOrSuccess)';
}


}

/// @nodoc
abstract mixin class $ChangeCurrentUserStateCopyWith<$Res>  {
  factory $ChangeCurrentUserStateCopyWith(ChangeCurrentUserState value, $Res Function(ChangeCurrentUserState) _then) = _$ChangeCurrentUserStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool showValueErrors, Option<FullName> name, Option<Username> username, Option<Email> email, Option<File> profilePicture, Option<Either<UserFailures, Unit>> failureOrSuccess
});




}
/// @nodoc
class _$ChangeCurrentUserStateCopyWithImpl<$Res>
    implements $ChangeCurrentUserStateCopyWith<$Res> {
  _$ChangeCurrentUserStateCopyWithImpl(this._self, this._then);

  final ChangeCurrentUserState _self;
  final $Res Function(ChangeCurrentUserState) _then;

/// Create a copy of ChangeCurrentUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? showValueErrors = null,Object? name = null,Object? username = null,Object? email = null,Object? profilePicture = null,Object? failureOrSuccess = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,showValueErrors: null == showValueErrors ? _self.showValueErrors : showValueErrors // ignore: cast_nullable_to_non_nullable
as bool,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as Option<FullName>,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as Option<Username>,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as Option<Email>,profilePicture: null == profilePicture ? _self.profilePicture : profilePicture // ignore: cast_nullable_to_non_nullable
as Option<File>,failureOrSuccess: null == failureOrSuccess ? _self.failureOrSuccess : failureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<UserFailures, Unit>>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChangeCurrentUserState].
extension ChangeCurrentUserStatePatterns on ChangeCurrentUserState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangeCurrentUserState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangeCurrentUserState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangeCurrentUserState value)  $default,){
final _that = this;
switch (_that) {
case _ChangeCurrentUserState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangeCurrentUserState value)?  $default,){
final _that = this;
switch (_that) {
case _ChangeCurrentUserState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool showValueErrors,  Option<FullName> name,  Option<Username> username,  Option<Email> email,  Option<File> profilePicture,  Option<Either<UserFailures, Unit>> failureOrSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangeCurrentUserState() when $default != null:
return $default(_that.isLoading,_that.showValueErrors,_that.name,_that.username,_that.email,_that.profilePicture,_that.failureOrSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool showValueErrors,  Option<FullName> name,  Option<Username> username,  Option<Email> email,  Option<File> profilePicture,  Option<Either<UserFailures, Unit>> failureOrSuccess)  $default,) {final _that = this;
switch (_that) {
case _ChangeCurrentUserState():
return $default(_that.isLoading,_that.showValueErrors,_that.name,_that.username,_that.email,_that.profilePicture,_that.failureOrSuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool showValueErrors,  Option<FullName> name,  Option<Username> username,  Option<Email> email,  Option<File> profilePicture,  Option<Either<UserFailures, Unit>> failureOrSuccess)?  $default,) {final _that = this;
switch (_that) {
case _ChangeCurrentUserState() when $default != null:
return $default(_that.isLoading,_that.showValueErrors,_that.name,_that.username,_that.email,_that.profilePicture,_that.failureOrSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _ChangeCurrentUserState implements ChangeCurrentUserState {
  const _ChangeCurrentUserState({required this.isLoading, required this.showValueErrors, required this.name, required this.username, required this.email, required this.profilePicture, required this.failureOrSuccess});
  

@override final  bool isLoading;
@override final  bool showValueErrors;
@override final  Option<FullName> name;
@override final  Option<Username> username;
@override final  Option<Email> email;
@override final  Option<File> profilePicture;
@override final  Option<Either<UserFailures, Unit>> failureOrSuccess;

/// Create a copy of ChangeCurrentUserState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeCurrentUserStateCopyWith<_ChangeCurrentUserState> get copyWith => __$ChangeCurrentUserStateCopyWithImpl<_ChangeCurrentUserState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeCurrentUserState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.showValueErrors, showValueErrors) || other.showValueErrors == showValueErrors)&&(identical(other.name, name) || other.name == name)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.profilePicture, profilePicture) || other.profilePicture == profilePicture)&&(identical(other.failureOrSuccess, failureOrSuccess) || other.failureOrSuccess == failureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,showValueErrors,name,username,email,profilePicture,failureOrSuccess);

@override
String toString() {
  return 'ChangeCurrentUserState(isLoading: $isLoading, showValueErrors: $showValueErrors, name: $name, username: $username, email: $email, profilePicture: $profilePicture, failureOrSuccess: $failureOrSuccess)';
}


}

/// @nodoc
abstract mixin class _$ChangeCurrentUserStateCopyWith<$Res> implements $ChangeCurrentUserStateCopyWith<$Res> {
  factory _$ChangeCurrentUserStateCopyWith(_ChangeCurrentUserState value, $Res Function(_ChangeCurrentUserState) _then) = __$ChangeCurrentUserStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool showValueErrors, Option<FullName> name, Option<Username> username, Option<Email> email, Option<File> profilePicture, Option<Either<UserFailures, Unit>> failureOrSuccess
});




}
/// @nodoc
class __$ChangeCurrentUserStateCopyWithImpl<$Res>
    implements _$ChangeCurrentUserStateCopyWith<$Res> {
  __$ChangeCurrentUserStateCopyWithImpl(this._self, this._then);

  final _ChangeCurrentUserState _self;
  final $Res Function(_ChangeCurrentUserState) _then;

/// Create a copy of ChangeCurrentUserState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? showValueErrors = null,Object? name = null,Object? username = null,Object? email = null,Object? profilePicture = null,Object? failureOrSuccess = null,}) {
  return _then(_ChangeCurrentUserState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,showValueErrors: null == showValueErrors ? _self.showValueErrors : showValueErrors // ignore: cast_nullable_to_non_nullable
as bool,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as Option<FullName>,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as Option<Username>,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as Option<Email>,profilePicture: null == profilePicture ? _self.profilePicture : profilePicture // ignore: cast_nullable_to_non_nullable
as Option<File>,failureOrSuccess: null == failureOrSuccess ? _self.failureOrSuccess : failureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<UserFailures, Unit>>,
  ));
}


}

// dart format on
