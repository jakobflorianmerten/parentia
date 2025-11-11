// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateUserEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateUserEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateUserEvent()';
}


}

/// @nodoc
class $CreateUserEventCopyWith<$Res>  {
$CreateUserEventCopyWith(CreateUserEvent _, $Res Function(CreateUserEvent) __);
}


/// Adds pattern-matching-related methods to [CreateUserEvent].
extension CreateUserEventPatterns on CreateUserEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FullNameChanged value)?  fullNameChanged,TResult Function( UsernameChanged value)?  usernameChanged,TResult Function( ProfilePictureChanged value)?  profilePictureChanged,TResult Function( SubmitCreateUser value)?  submitCreateUser,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FullNameChanged() when fullNameChanged != null:
return fullNameChanged(_that);case UsernameChanged() when usernameChanged != null:
return usernameChanged(_that);case ProfilePictureChanged() when profilePictureChanged != null:
return profilePictureChanged(_that);case SubmitCreateUser() when submitCreateUser != null:
return submitCreateUser(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FullNameChanged value)  fullNameChanged,required TResult Function( UsernameChanged value)  usernameChanged,required TResult Function( ProfilePictureChanged value)  profilePictureChanged,required TResult Function( SubmitCreateUser value)  submitCreateUser,}){
final _that = this;
switch (_that) {
case FullNameChanged():
return fullNameChanged(_that);case UsernameChanged():
return usernameChanged(_that);case ProfilePictureChanged():
return profilePictureChanged(_that);case SubmitCreateUser():
return submitCreateUser(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FullNameChanged value)?  fullNameChanged,TResult? Function( UsernameChanged value)?  usernameChanged,TResult? Function( ProfilePictureChanged value)?  profilePictureChanged,TResult? Function( SubmitCreateUser value)?  submitCreateUser,}){
final _that = this;
switch (_that) {
case FullNameChanged() when fullNameChanged != null:
return fullNameChanged(_that);case UsernameChanged() when usernameChanged != null:
return usernameChanged(_that);case ProfilePictureChanged() when profilePictureChanged != null:
return profilePictureChanged(_that);case SubmitCreateUser() when submitCreateUser != null:
return submitCreateUser(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String fullNameString)?  fullNameChanged,TResult Function( String usernameString)?  usernameChanged,TResult Function( File file)?  profilePictureChanged,TResult Function()?  submitCreateUser,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FullNameChanged() when fullNameChanged != null:
return fullNameChanged(_that.fullNameString);case UsernameChanged() when usernameChanged != null:
return usernameChanged(_that.usernameString);case ProfilePictureChanged() when profilePictureChanged != null:
return profilePictureChanged(_that.file);case SubmitCreateUser() when submitCreateUser != null:
return submitCreateUser();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String fullNameString)  fullNameChanged,required TResult Function( String usernameString)  usernameChanged,required TResult Function( File file)  profilePictureChanged,required TResult Function()  submitCreateUser,}) {final _that = this;
switch (_that) {
case FullNameChanged():
return fullNameChanged(_that.fullNameString);case UsernameChanged():
return usernameChanged(_that.usernameString);case ProfilePictureChanged():
return profilePictureChanged(_that.file);case SubmitCreateUser():
return submitCreateUser();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String fullNameString)?  fullNameChanged,TResult? Function( String usernameString)?  usernameChanged,TResult? Function( File file)?  profilePictureChanged,TResult? Function()?  submitCreateUser,}) {final _that = this;
switch (_that) {
case FullNameChanged() when fullNameChanged != null:
return fullNameChanged(_that.fullNameString);case UsernameChanged() when usernameChanged != null:
return usernameChanged(_that.usernameString);case ProfilePictureChanged() when profilePictureChanged != null:
return profilePictureChanged(_that.file);case SubmitCreateUser() when submitCreateUser != null:
return submitCreateUser();case _:
  return null;

}
}

}

/// @nodoc


class FullNameChanged implements CreateUserEvent {
  const FullNameChanged(this.fullNameString);
  

 final  String fullNameString;

/// Create a copy of CreateUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FullNameChangedCopyWith<FullNameChanged> get copyWith => _$FullNameChangedCopyWithImpl<FullNameChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FullNameChanged&&(identical(other.fullNameString, fullNameString) || other.fullNameString == fullNameString));
}


@override
int get hashCode => Object.hash(runtimeType,fullNameString);

@override
String toString() {
  return 'CreateUserEvent.fullNameChanged(fullNameString: $fullNameString)';
}


}

/// @nodoc
abstract mixin class $FullNameChangedCopyWith<$Res> implements $CreateUserEventCopyWith<$Res> {
  factory $FullNameChangedCopyWith(FullNameChanged value, $Res Function(FullNameChanged) _then) = _$FullNameChangedCopyWithImpl;
@useResult
$Res call({
 String fullNameString
});




}
/// @nodoc
class _$FullNameChangedCopyWithImpl<$Res>
    implements $FullNameChangedCopyWith<$Res> {
  _$FullNameChangedCopyWithImpl(this._self, this._then);

  final FullNameChanged _self;
  final $Res Function(FullNameChanged) _then;

/// Create a copy of CreateUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fullNameString = null,}) {
  return _then(FullNameChanged(
null == fullNameString ? _self.fullNameString : fullNameString // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UsernameChanged implements CreateUserEvent {
  const UsernameChanged(this.usernameString);
  

 final  String usernameString;

/// Create a copy of CreateUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsernameChangedCopyWith<UsernameChanged> get copyWith => _$UsernameChangedCopyWithImpl<UsernameChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsernameChanged&&(identical(other.usernameString, usernameString) || other.usernameString == usernameString));
}


@override
int get hashCode => Object.hash(runtimeType,usernameString);

@override
String toString() {
  return 'CreateUserEvent.usernameChanged(usernameString: $usernameString)';
}


}

/// @nodoc
abstract mixin class $UsernameChangedCopyWith<$Res> implements $CreateUserEventCopyWith<$Res> {
  factory $UsernameChangedCopyWith(UsernameChanged value, $Res Function(UsernameChanged) _then) = _$UsernameChangedCopyWithImpl;
@useResult
$Res call({
 String usernameString
});




}
/// @nodoc
class _$UsernameChangedCopyWithImpl<$Res>
    implements $UsernameChangedCopyWith<$Res> {
  _$UsernameChangedCopyWithImpl(this._self, this._then);

  final UsernameChanged _self;
  final $Res Function(UsernameChanged) _then;

/// Create a copy of CreateUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? usernameString = null,}) {
  return _then(UsernameChanged(
null == usernameString ? _self.usernameString : usernameString // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ProfilePictureChanged implements CreateUserEvent {
  const ProfilePictureChanged(this.file);
  

 final  File file;

/// Create a copy of CreateUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfilePictureChangedCopyWith<ProfilePictureChanged> get copyWith => _$ProfilePictureChangedCopyWithImpl<ProfilePictureChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfilePictureChanged&&(identical(other.file, file) || other.file == file));
}


@override
int get hashCode => Object.hash(runtimeType,file);

@override
String toString() {
  return 'CreateUserEvent.profilePictureChanged(file: $file)';
}


}

/// @nodoc
abstract mixin class $ProfilePictureChangedCopyWith<$Res> implements $CreateUserEventCopyWith<$Res> {
  factory $ProfilePictureChangedCopyWith(ProfilePictureChanged value, $Res Function(ProfilePictureChanged) _then) = _$ProfilePictureChangedCopyWithImpl;
@useResult
$Res call({
 File file
});




}
/// @nodoc
class _$ProfilePictureChangedCopyWithImpl<$Res>
    implements $ProfilePictureChangedCopyWith<$Res> {
  _$ProfilePictureChangedCopyWithImpl(this._self, this._then);

  final ProfilePictureChanged _self;
  final $Res Function(ProfilePictureChanged) _then;

/// Create a copy of CreateUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? file = null,}) {
  return _then(ProfilePictureChanged(
null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as File,
  ));
}


}

/// @nodoc


class SubmitCreateUser implements CreateUserEvent {
  const SubmitCreateUser();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitCreateUser);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateUserEvent.submitCreateUser()';
}


}




/// @nodoc
mixin _$CreateUserState {

 bool get isSubmitting; FullName get name; Username get username; bool get showErrorMessages; Option<File> get file; Option<Either<UserFailures, Unit>> get failureOrSuccess;
/// Create a copy of CreateUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateUserStateCopyWith<CreateUserState> get copyWith => _$CreateUserStateCopyWithImpl<CreateUserState>(this as CreateUserState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateUserState&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.name, name) || other.name == name)&&(identical(other.username, username) || other.username == username)&&(identical(other.showErrorMessages, showErrorMessages) || other.showErrorMessages == showErrorMessages)&&(identical(other.file, file) || other.file == file)&&(identical(other.failureOrSuccess, failureOrSuccess) || other.failureOrSuccess == failureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isSubmitting,name,username,showErrorMessages,file,failureOrSuccess);

@override
String toString() {
  return 'CreateUserState(isSubmitting: $isSubmitting, name: $name, username: $username, showErrorMessages: $showErrorMessages, file: $file, failureOrSuccess: $failureOrSuccess)';
}


}

/// @nodoc
abstract mixin class $CreateUserStateCopyWith<$Res>  {
  factory $CreateUserStateCopyWith(CreateUserState value, $Res Function(CreateUserState) _then) = _$CreateUserStateCopyWithImpl;
@useResult
$Res call({
 bool isSubmitting, FullName name, Username username, bool showErrorMessages, Option<File> file, Option<Either<UserFailures, Unit>> failureOrSuccess
});




}
/// @nodoc
class _$CreateUserStateCopyWithImpl<$Res>
    implements $CreateUserStateCopyWith<$Res> {
  _$CreateUserStateCopyWithImpl(this._self, this._then);

  final CreateUserState _self;
  final $Res Function(CreateUserState) _then;

/// Create a copy of CreateUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSubmitting = null,Object? name = null,Object? username = null,Object? showErrorMessages = null,Object? file = null,Object? failureOrSuccess = null,}) {
  return _then(_self.copyWith(
isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as FullName,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as Username,showErrorMessages: null == showErrorMessages ? _self.showErrorMessages : showErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as Option<File>,failureOrSuccess: null == failureOrSuccess ? _self.failureOrSuccess : failureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<UserFailures, Unit>>,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateUserState].
extension CreateUserStatePatterns on CreateUserState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateUserState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateUserState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateUserState value)  $default,){
final _that = this;
switch (_that) {
case _CreateUserState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateUserState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateUserState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isSubmitting,  FullName name,  Username username,  bool showErrorMessages,  Option<File> file,  Option<Either<UserFailures, Unit>> failureOrSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateUserState() when $default != null:
return $default(_that.isSubmitting,_that.name,_that.username,_that.showErrorMessages,_that.file,_that.failureOrSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isSubmitting,  FullName name,  Username username,  bool showErrorMessages,  Option<File> file,  Option<Either<UserFailures, Unit>> failureOrSuccess)  $default,) {final _that = this;
switch (_that) {
case _CreateUserState():
return $default(_that.isSubmitting,_that.name,_that.username,_that.showErrorMessages,_that.file,_that.failureOrSuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isSubmitting,  FullName name,  Username username,  bool showErrorMessages,  Option<File> file,  Option<Either<UserFailures, Unit>> failureOrSuccess)?  $default,) {final _that = this;
switch (_that) {
case _CreateUserState() when $default != null:
return $default(_that.isSubmitting,_that.name,_that.username,_that.showErrorMessages,_that.file,_that.failureOrSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _CreateUserState implements CreateUserState {
  const _CreateUserState({required this.isSubmitting, required this.name, required this.username, required this.showErrorMessages, required this.file, required this.failureOrSuccess});
  

@override final  bool isSubmitting;
@override final  FullName name;
@override final  Username username;
@override final  bool showErrorMessages;
@override final  Option<File> file;
@override final  Option<Either<UserFailures, Unit>> failureOrSuccess;

/// Create a copy of CreateUserState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateUserStateCopyWith<_CreateUserState> get copyWith => __$CreateUserStateCopyWithImpl<_CreateUserState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateUserState&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.name, name) || other.name == name)&&(identical(other.username, username) || other.username == username)&&(identical(other.showErrorMessages, showErrorMessages) || other.showErrorMessages == showErrorMessages)&&(identical(other.file, file) || other.file == file)&&(identical(other.failureOrSuccess, failureOrSuccess) || other.failureOrSuccess == failureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isSubmitting,name,username,showErrorMessages,file,failureOrSuccess);

@override
String toString() {
  return 'CreateUserState(isSubmitting: $isSubmitting, name: $name, username: $username, showErrorMessages: $showErrorMessages, file: $file, failureOrSuccess: $failureOrSuccess)';
}


}

/// @nodoc
abstract mixin class _$CreateUserStateCopyWith<$Res> implements $CreateUserStateCopyWith<$Res> {
  factory _$CreateUserStateCopyWith(_CreateUserState value, $Res Function(_CreateUserState) _then) = __$CreateUserStateCopyWithImpl;
@override @useResult
$Res call({
 bool isSubmitting, FullName name, Username username, bool showErrorMessages, Option<File> file, Option<Either<UserFailures, Unit>> failureOrSuccess
});




}
/// @nodoc
class __$CreateUserStateCopyWithImpl<$Res>
    implements _$CreateUserStateCopyWith<$Res> {
  __$CreateUserStateCopyWithImpl(this._self, this._then);

  final _CreateUserState _self;
  final $Res Function(_CreateUserState) _then;

/// Create a copy of CreateUserState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSubmitting = null,Object? name = null,Object? username = null,Object? showErrorMessages = null,Object? file = null,Object? failureOrSuccess = null,}) {
  return _then(_CreateUserState(
isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as FullName,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as Username,showErrorMessages: null == showErrorMessages ? _self.showErrorMessages : showErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as Option<File>,failureOrSuccess: null == failureOrSuccess ? _self.failureOrSuccess : failureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<UserFailures, Unit>>,
  ));
}


}

// dart format on
