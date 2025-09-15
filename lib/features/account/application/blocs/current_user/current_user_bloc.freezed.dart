// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CurrentUserEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentUserEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CurrentUserEvent()';
}


}

/// @nodoc
class $CurrentUserEventCopyWith<$Res>  {
$CurrentUserEventCopyWith(CurrentUserEvent _, $Res Function(CurrentUserEvent) __);
}


/// Adds pattern-matching-related methods to [CurrentUserEvent].
extension CurrentUserEventPatterns on CurrentUserEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CheckCurrentUser value)?  checkCurrentUser,TResult Function( SignOutCurrentUser value)?  signOutCurrentUser,TResult Function( CurrentUserUpdate value)?  currentUserUpdate,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CheckCurrentUser() when checkCurrentUser != null:
return checkCurrentUser(_that);case SignOutCurrentUser() when signOutCurrentUser != null:
return signOutCurrentUser(_that);case CurrentUserUpdate() when currentUserUpdate != null:
return currentUserUpdate(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CheckCurrentUser value)  checkCurrentUser,required TResult Function( SignOutCurrentUser value)  signOutCurrentUser,required TResult Function( CurrentUserUpdate value)  currentUserUpdate,}){
final _that = this;
switch (_that) {
case CheckCurrentUser():
return checkCurrentUser(_that);case SignOutCurrentUser():
return signOutCurrentUser(_that);case CurrentUserUpdate():
return currentUserUpdate(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CheckCurrentUser value)?  checkCurrentUser,TResult? Function( SignOutCurrentUser value)?  signOutCurrentUser,TResult? Function( CurrentUserUpdate value)?  currentUserUpdate,}){
final _that = this;
switch (_that) {
case CheckCurrentUser() when checkCurrentUser != null:
return checkCurrentUser(_that);case SignOutCurrentUser() when signOutCurrentUser != null:
return signOutCurrentUser(_that);case CurrentUserUpdate() when currentUserUpdate != null:
return currentUserUpdate(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  checkCurrentUser,TResult Function()?  signOutCurrentUser,TResult Function( User user)?  currentUserUpdate,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CheckCurrentUser() when checkCurrentUser != null:
return checkCurrentUser();case SignOutCurrentUser() when signOutCurrentUser != null:
return signOutCurrentUser();case CurrentUserUpdate() when currentUserUpdate != null:
return currentUserUpdate(_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  checkCurrentUser,required TResult Function()  signOutCurrentUser,required TResult Function( User user)  currentUserUpdate,}) {final _that = this;
switch (_that) {
case CheckCurrentUser():
return checkCurrentUser();case SignOutCurrentUser():
return signOutCurrentUser();case CurrentUserUpdate():
return currentUserUpdate(_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  checkCurrentUser,TResult? Function()?  signOutCurrentUser,TResult? Function( User user)?  currentUserUpdate,}) {final _that = this;
switch (_that) {
case CheckCurrentUser() when checkCurrentUser != null:
return checkCurrentUser();case SignOutCurrentUser() when signOutCurrentUser != null:
return signOutCurrentUser();case CurrentUserUpdate() when currentUserUpdate != null:
return currentUserUpdate(_that.user);case _:
  return null;

}
}

}

/// @nodoc


class CheckCurrentUser implements CurrentUserEvent {
  const CheckCurrentUser();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckCurrentUser);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CurrentUserEvent.checkCurrentUser()';
}


}




/// @nodoc


class SignOutCurrentUser implements CurrentUserEvent {
  const SignOutCurrentUser();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignOutCurrentUser);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CurrentUserEvent.signOutCurrentUser()';
}


}




/// @nodoc


class CurrentUserUpdate implements CurrentUserEvent {
  const CurrentUserUpdate(this.user);
  

 final  User user;

/// Create a copy of CurrentUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrentUserUpdateCopyWith<CurrentUserUpdate> get copyWith => _$CurrentUserUpdateCopyWithImpl<CurrentUserUpdate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentUserUpdate&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'CurrentUserEvent.currentUserUpdate(user: $user)';
}


}

/// @nodoc
abstract mixin class $CurrentUserUpdateCopyWith<$Res> implements $CurrentUserEventCopyWith<$Res> {
  factory $CurrentUserUpdateCopyWith(CurrentUserUpdate value, $Res Function(CurrentUserUpdate) _then) = _$CurrentUserUpdateCopyWithImpl;
@useResult
$Res call({
 User user
});




}
/// @nodoc
class _$CurrentUserUpdateCopyWithImpl<$Res>
    implements $CurrentUserUpdateCopyWith<$Res> {
  _$CurrentUserUpdateCopyWithImpl(this._self, this._then);

  final CurrentUserUpdate _self;
  final $Res Function(CurrentUserUpdate) _then;

/// Create a copy of CurrentUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(CurrentUserUpdate(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}


}

/// @nodoc
mixin _$CurrentUserState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentUserState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CurrentUserState()';
}


}

/// @nodoc
class $CurrentUserStateCopyWith<$Res>  {
$CurrentUserStateCopyWith(CurrentUserState _, $Res Function(CurrentUserState) __);
}


/// Adds pattern-matching-related methods to [CurrentUserState].
extension CurrentUserStatePatterns on CurrentUserState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CurrentUserStateInitial value)?  initial,TResult Function( CurrentUserStateNotAuthenticated value)?  notAuthenticated,TResult Function( CurrentUserStateAuthenticateNoAccount value)?  authenticatedNoUserAccount,TResult Function( CurrentUserStateAuthenticateWithAccount value)?  authenticatedWithUserAccount,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CurrentUserStateInitial() when initial != null:
return initial(_that);case CurrentUserStateNotAuthenticated() when notAuthenticated != null:
return notAuthenticated(_that);case CurrentUserStateAuthenticateNoAccount() when authenticatedNoUserAccount != null:
return authenticatedNoUserAccount(_that);case CurrentUserStateAuthenticateWithAccount() when authenticatedWithUserAccount != null:
return authenticatedWithUserAccount(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CurrentUserStateInitial value)  initial,required TResult Function( CurrentUserStateNotAuthenticated value)  notAuthenticated,required TResult Function( CurrentUserStateAuthenticateNoAccount value)  authenticatedNoUserAccount,required TResult Function( CurrentUserStateAuthenticateWithAccount value)  authenticatedWithUserAccount,}){
final _that = this;
switch (_that) {
case CurrentUserStateInitial():
return initial(_that);case CurrentUserStateNotAuthenticated():
return notAuthenticated(_that);case CurrentUserStateAuthenticateNoAccount():
return authenticatedNoUserAccount(_that);case CurrentUserStateAuthenticateWithAccount():
return authenticatedWithUserAccount(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CurrentUserStateInitial value)?  initial,TResult? Function( CurrentUserStateNotAuthenticated value)?  notAuthenticated,TResult? Function( CurrentUserStateAuthenticateNoAccount value)?  authenticatedNoUserAccount,TResult? Function( CurrentUserStateAuthenticateWithAccount value)?  authenticatedWithUserAccount,}){
final _that = this;
switch (_that) {
case CurrentUserStateInitial() when initial != null:
return initial(_that);case CurrentUserStateNotAuthenticated() when notAuthenticated != null:
return notAuthenticated(_that);case CurrentUserStateAuthenticateNoAccount() when authenticatedNoUserAccount != null:
return authenticatedNoUserAccount(_that);case CurrentUserStateAuthenticateWithAccount() when authenticatedWithUserAccount != null:
return authenticatedWithUserAccount(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  notAuthenticated,TResult Function( AuthObject authObject)?  authenticatedNoUserAccount,TResult Function( User user)?  authenticatedWithUserAccount,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CurrentUserStateInitial() when initial != null:
return initial();case CurrentUserStateNotAuthenticated() when notAuthenticated != null:
return notAuthenticated();case CurrentUserStateAuthenticateNoAccount() when authenticatedNoUserAccount != null:
return authenticatedNoUserAccount(_that.authObject);case CurrentUserStateAuthenticateWithAccount() when authenticatedWithUserAccount != null:
return authenticatedWithUserAccount(_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  notAuthenticated,required TResult Function( AuthObject authObject)  authenticatedNoUserAccount,required TResult Function( User user)  authenticatedWithUserAccount,}) {final _that = this;
switch (_that) {
case CurrentUserStateInitial():
return initial();case CurrentUserStateNotAuthenticated():
return notAuthenticated();case CurrentUserStateAuthenticateNoAccount():
return authenticatedNoUserAccount(_that.authObject);case CurrentUserStateAuthenticateWithAccount():
return authenticatedWithUserAccount(_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  notAuthenticated,TResult? Function( AuthObject authObject)?  authenticatedNoUserAccount,TResult? Function( User user)?  authenticatedWithUserAccount,}) {final _that = this;
switch (_that) {
case CurrentUserStateInitial() when initial != null:
return initial();case CurrentUserStateNotAuthenticated() when notAuthenticated != null:
return notAuthenticated();case CurrentUserStateAuthenticateNoAccount() when authenticatedNoUserAccount != null:
return authenticatedNoUserAccount(_that.authObject);case CurrentUserStateAuthenticateWithAccount() when authenticatedWithUserAccount != null:
return authenticatedWithUserAccount(_that.user);case _:
  return null;

}
}

}

/// @nodoc


class CurrentUserStateInitial implements CurrentUserState {
  const CurrentUserStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentUserStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CurrentUserState.initial()';
}


}




/// @nodoc


class CurrentUserStateNotAuthenticated implements CurrentUserState {
  const CurrentUserStateNotAuthenticated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentUserStateNotAuthenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CurrentUserState.notAuthenticated()';
}


}




/// @nodoc


class CurrentUserStateAuthenticateNoAccount implements CurrentUserState {
  const CurrentUserStateAuthenticateNoAccount(this.authObject);
  

 final  AuthObject authObject;

/// Create a copy of CurrentUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrentUserStateAuthenticateNoAccountCopyWith<CurrentUserStateAuthenticateNoAccount> get copyWith => _$CurrentUserStateAuthenticateNoAccountCopyWithImpl<CurrentUserStateAuthenticateNoAccount>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentUserStateAuthenticateNoAccount&&(identical(other.authObject, authObject) || other.authObject == authObject));
}


@override
int get hashCode => Object.hash(runtimeType,authObject);

@override
String toString() {
  return 'CurrentUserState.authenticatedNoUserAccount(authObject: $authObject)';
}


}

/// @nodoc
abstract mixin class $CurrentUserStateAuthenticateNoAccountCopyWith<$Res> implements $CurrentUserStateCopyWith<$Res> {
  factory $CurrentUserStateAuthenticateNoAccountCopyWith(CurrentUserStateAuthenticateNoAccount value, $Res Function(CurrentUserStateAuthenticateNoAccount) _then) = _$CurrentUserStateAuthenticateNoAccountCopyWithImpl;
@useResult
$Res call({
 AuthObject authObject
});




}
/// @nodoc
class _$CurrentUserStateAuthenticateNoAccountCopyWithImpl<$Res>
    implements $CurrentUserStateAuthenticateNoAccountCopyWith<$Res> {
  _$CurrentUserStateAuthenticateNoAccountCopyWithImpl(this._self, this._then);

  final CurrentUserStateAuthenticateNoAccount _self;
  final $Res Function(CurrentUserStateAuthenticateNoAccount) _then;

/// Create a copy of CurrentUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? authObject = null,}) {
  return _then(CurrentUserStateAuthenticateNoAccount(
null == authObject ? _self.authObject : authObject // ignore: cast_nullable_to_non_nullable
as AuthObject,
  ));
}


}

/// @nodoc


class CurrentUserStateAuthenticateWithAccount implements CurrentUserState {
  const CurrentUserStateAuthenticateWithAccount(this.user);
  

 final  User user;

/// Create a copy of CurrentUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrentUserStateAuthenticateWithAccountCopyWith<CurrentUserStateAuthenticateWithAccount> get copyWith => _$CurrentUserStateAuthenticateWithAccountCopyWithImpl<CurrentUserStateAuthenticateWithAccount>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentUserStateAuthenticateWithAccount&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'CurrentUserState.authenticatedWithUserAccount(user: $user)';
}


}

/// @nodoc
abstract mixin class $CurrentUserStateAuthenticateWithAccountCopyWith<$Res> implements $CurrentUserStateCopyWith<$Res> {
  factory $CurrentUserStateAuthenticateWithAccountCopyWith(CurrentUserStateAuthenticateWithAccount value, $Res Function(CurrentUserStateAuthenticateWithAccount) _then) = _$CurrentUserStateAuthenticateWithAccountCopyWithImpl;
@useResult
$Res call({
 User user
});




}
/// @nodoc
class _$CurrentUserStateAuthenticateWithAccountCopyWithImpl<$Res>
    implements $CurrentUserStateAuthenticateWithAccountCopyWith<$Res> {
  _$CurrentUserStateAuthenticateWithAccountCopyWithImpl(this._self, this._then);

  final CurrentUserStateAuthenticateWithAccount _self;
  final $Res Function(CurrentUserStateAuthenticateWithAccount) _then;

/// Create a copy of CurrentUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(CurrentUserStateAuthenticateWithAccount(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}


}

// dart format on
