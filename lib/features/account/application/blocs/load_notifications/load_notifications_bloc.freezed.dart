// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'load_notifications_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoadNotificationsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadNotificationsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadNotificationsEvent()';
}


}

/// @nodoc
class $LoadNotificationsEventCopyWith<$Res>  {
$LoadNotificationsEventCopyWith(LoadNotificationsEvent _, $Res Function(LoadNotificationsEvent) __);
}


/// Adds pattern-matching-related methods to [LoadNotificationsEvent].
extension LoadNotificationsEventPatterns on LoadNotificationsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadNotifications value)?  loadNotifications,TResult Function( UpdateNotifications value)?  updateNotifications,TResult Function( MarkNotificationsAsRead value)?  markNotificationsAsRead,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadNotifications() when loadNotifications != null:
return loadNotifications(_that);case UpdateNotifications() when updateNotifications != null:
return updateNotifications(_that);case MarkNotificationsAsRead() when markNotificationsAsRead != null:
return markNotificationsAsRead(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadNotifications value)  loadNotifications,required TResult Function( UpdateNotifications value)  updateNotifications,required TResult Function( MarkNotificationsAsRead value)  markNotificationsAsRead,}){
final _that = this;
switch (_that) {
case LoadNotifications():
return loadNotifications(_that);case UpdateNotifications():
return updateNotifications(_that);case MarkNotificationsAsRead():
return markNotificationsAsRead(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadNotifications value)?  loadNotifications,TResult? Function( UpdateNotifications value)?  updateNotifications,TResult? Function( MarkNotificationsAsRead value)?  markNotificationsAsRead,}){
final _that = this;
switch (_that) {
case LoadNotifications() when loadNotifications != null:
return loadNotifications(_that);case UpdateNotifications() when updateNotifications != null:
return updateNotifications(_that);case MarkNotificationsAsRead() when markNotificationsAsRead != null:
return markNotificationsAsRead(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadNotifications,TResult Function( List<Notification> notifications)?  updateNotifications,TResult Function()?  markNotificationsAsRead,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadNotifications() when loadNotifications != null:
return loadNotifications();case UpdateNotifications() when updateNotifications != null:
return updateNotifications(_that.notifications);case MarkNotificationsAsRead() when markNotificationsAsRead != null:
return markNotificationsAsRead();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadNotifications,required TResult Function( List<Notification> notifications)  updateNotifications,required TResult Function()  markNotificationsAsRead,}) {final _that = this;
switch (_that) {
case LoadNotifications():
return loadNotifications();case UpdateNotifications():
return updateNotifications(_that.notifications);case MarkNotificationsAsRead():
return markNotificationsAsRead();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadNotifications,TResult? Function( List<Notification> notifications)?  updateNotifications,TResult? Function()?  markNotificationsAsRead,}) {final _that = this;
switch (_that) {
case LoadNotifications() when loadNotifications != null:
return loadNotifications();case UpdateNotifications() when updateNotifications != null:
return updateNotifications(_that.notifications);case MarkNotificationsAsRead() when markNotificationsAsRead != null:
return markNotificationsAsRead();case _:
  return null;

}
}

}

/// @nodoc


class LoadNotifications implements LoadNotificationsEvent {
  const LoadNotifications();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadNotifications);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadNotificationsEvent.loadNotifications()';
}


}




/// @nodoc


class UpdateNotifications implements LoadNotificationsEvent {
  const UpdateNotifications(final  List<Notification> notifications): _notifications = notifications;
  

 final  List<Notification> _notifications;
 List<Notification> get notifications {
  if (_notifications is EqualUnmodifiableListView) return _notifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notifications);
}


/// Create a copy of LoadNotificationsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateNotificationsCopyWith<UpdateNotifications> get copyWith => _$UpdateNotificationsCopyWithImpl<UpdateNotifications>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateNotifications&&const DeepCollectionEquality().equals(other._notifications, _notifications));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_notifications));

@override
String toString() {
  return 'LoadNotificationsEvent.updateNotifications(notifications: $notifications)';
}


}

/// @nodoc
abstract mixin class $UpdateNotificationsCopyWith<$Res> implements $LoadNotificationsEventCopyWith<$Res> {
  factory $UpdateNotificationsCopyWith(UpdateNotifications value, $Res Function(UpdateNotifications) _then) = _$UpdateNotificationsCopyWithImpl;
@useResult
$Res call({
 List<Notification> notifications
});




}
/// @nodoc
class _$UpdateNotificationsCopyWithImpl<$Res>
    implements $UpdateNotificationsCopyWith<$Res> {
  _$UpdateNotificationsCopyWithImpl(this._self, this._then);

  final UpdateNotifications _self;
  final $Res Function(UpdateNotifications) _then;

/// Create a copy of LoadNotificationsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? notifications = null,}) {
  return _then(UpdateNotifications(
null == notifications ? _self._notifications : notifications // ignore: cast_nullable_to_non_nullable
as List<Notification>,
  ));
}


}

/// @nodoc


class MarkNotificationsAsRead implements LoadNotificationsEvent {
  const MarkNotificationsAsRead();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarkNotificationsAsRead);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadNotificationsEvent.markNotificationsAsRead()';
}


}




/// @nodoc
mixin _$LoadNotificationsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadNotificationsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadNotificationsState()';
}


}

/// @nodoc
class $LoadNotificationsStateCopyWith<$Res>  {
$LoadNotificationsStateCopyWith(LoadNotificationsState _, $Res Function(LoadNotificationsState) __);
}


/// Adds pattern-matching-related methods to [LoadNotificationsState].
extension LoadNotificationsStatePatterns on LoadNotificationsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitialLoadNotificationsState value)?  initial,TResult Function( LoadingLoadNotificationsState value)?  loading,TResult Function( ErrorLoadNotificationsState value)?  error,TResult Function( SuccessLoadNotificationsState value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitialLoadNotificationsState() when initial != null:
return initial(_that);case LoadingLoadNotificationsState() when loading != null:
return loading(_that);case ErrorLoadNotificationsState() when error != null:
return error(_that);case SuccessLoadNotificationsState() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitialLoadNotificationsState value)  initial,required TResult Function( LoadingLoadNotificationsState value)  loading,required TResult Function( ErrorLoadNotificationsState value)  error,required TResult Function( SuccessLoadNotificationsState value)  success,}){
final _that = this;
switch (_that) {
case InitialLoadNotificationsState():
return initial(_that);case LoadingLoadNotificationsState():
return loading(_that);case ErrorLoadNotificationsState():
return error(_that);case SuccessLoadNotificationsState():
return success(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitialLoadNotificationsState value)?  initial,TResult? Function( LoadingLoadNotificationsState value)?  loading,TResult? Function( ErrorLoadNotificationsState value)?  error,TResult? Function( SuccessLoadNotificationsState value)?  success,}){
final _that = this;
switch (_that) {
case InitialLoadNotificationsState() when initial != null:
return initial(_that);case LoadingLoadNotificationsState() when loading != null:
return loading(_that);case ErrorLoadNotificationsState() when error != null:
return error(_that);case SuccessLoadNotificationsState() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  error,TResult Function( List<Notification> notifications,  int numberOfUnreadNotifications)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitialLoadNotificationsState() when initial != null:
return initial();case LoadingLoadNotificationsState() when loading != null:
return loading();case ErrorLoadNotificationsState() when error != null:
return error(_that.message);case SuccessLoadNotificationsState() when success != null:
return success(_that.notifications,_that.numberOfUnreadNotifications);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  error,required TResult Function( List<Notification> notifications,  int numberOfUnreadNotifications)  success,}) {final _that = this;
switch (_that) {
case InitialLoadNotificationsState():
return initial();case LoadingLoadNotificationsState():
return loading();case ErrorLoadNotificationsState():
return error(_that.message);case SuccessLoadNotificationsState():
return success(_that.notifications,_that.numberOfUnreadNotifications);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  error,TResult? Function( List<Notification> notifications,  int numberOfUnreadNotifications)?  success,}) {final _that = this;
switch (_that) {
case InitialLoadNotificationsState() when initial != null:
return initial();case LoadingLoadNotificationsState() when loading != null:
return loading();case ErrorLoadNotificationsState() when error != null:
return error(_that.message);case SuccessLoadNotificationsState() when success != null:
return success(_that.notifications,_that.numberOfUnreadNotifications);case _:
  return null;

}
}

}

/// @nodoc


class InitialLoadNotificationsState implements LoadNotificationsState {
  const InitialLoadNotificationsState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitialLoadNotificationsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadNotificationsState.initial()';
}


}




/// @nodoc


class LoadingLoadNotificationsState implements LoadNotificationsState {
  const LoadingLoadNotificationsState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingLoadNotificationsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadNotificationsState.loading()';
}


}




/// @nodoc


class ErrorLoadNotificationsState implements LoadNotificationsState {
  const ErrorLoadNotificationsState(this.message);
  

 final  String message;

/// Create a copy of LoadNotificationsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorLoadNotificationsStateCopyWith<ErrorLoadNotificationsState> get copyWith => _$ErrorLoadNotificationsStateCopyWithImpl<ErrorLoadNotificationsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorLoadNotificationsState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'LoadNotificationsState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorLoadNotificationsStateCopyWith<$Res> implements $LoadNotificationsStateCopyWith<$Res> {
  factory $ErrorLoadNotificationsStateCopyWith(ErrorLoadNotificationsState value, $Res Function(ErrorLoadNotificationsState) _then) = _$ErrorLoadNotificationsStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorLoadNotificationsStateCopyWithImpl<$Res>
    implements $ErrorLoadNotificationsStateCopyWith<$Res> {
  _$ErrorLoadNotificationsStateCopyWithImpl(this._self, this._then);

  final ErrorLoadNotificationsState _self;
  final $Res Function(ErrorLoadNotificationsState) _then;

/// Create a copy of LoadNotificationsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ErrorLoadNotificationsState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SuccessLoadNotificationsState implements LoadNotificationsState {
  const SuccessLoadNotificationsState(final  List<Notification> notifications, this.numberOfUnreadNotifications): _notifications = notifications;
  

 final  List<Notification> _notifications;
 List<Notification> get notifications {
  if (_notifications is EqualUnmodifiableListView) return _notifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notifications);
}

 final  int numberOfUnreadNotifications;

/// Create a copy of LoadNotificationsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessLoadNotificationsStateCopyWith<SuccessLoadNotificationsState> get copyWith => _$SuccessLoadNotificationsStateCopyWithImpl<SuccessLoadNotificationsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessLoadNotificationsState&&const DeepCollectionEquality().equals(other._notifications, _notifications)&&(identical(other.numberOfUnreadNotifications, numberOfUnreadNotifications) || other.numberOfUnreadNotifications == numberOfUnreadNotifications));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_notifications),numberOfUnreadNotifications);

@override
String toString() {
  return 'LoadNotificationsState.success(notifications: $notifications, numberOfUnreadNotifications: $numberOfUnreadNotifications)';
}


}

/// @nodoc
abstract mixin class $SuccessLoadNotificationsStateCopyWith<$Res> implements $LoadNotificationsStateCopyWith<$Res> {
  factory $SuccessLoadNotificationsStateCopyWith(SuccessLoadNotificationsState value, $Res Function(SuccessLoadNotificationsState) _then) = _$SuccessLoadNotificationsStateCopyWithImpl;
@useResult
$Res call({
 List<Notification> notifications, int numberOfUnreadNotifications
});




}
/// @nodoc
class _$SuccessLoadNotificationsStateCopyWithImpl<$Res>
    implements $SuccessLoadNotificationsStateCopyWith<$Res> {
  _$SuccessLoadNotificationsStateCopyWithImpl(this._self, this._then);

  final SuccessLoadNotificationsState _self;
  final $Res Function(SuccessLoadNotificationsState) _then;

/// Create a copy of LoadNotificationsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? notifications = null,Object? numberOfUnreadNotifications = null,}) {
  return _then(SuccessLoadNotificationsState(
null == notifications ? _self._notifications : notifications // ignore: cast_nullable_to_non_nullable
as List<Notification>,null == numberOfUnreadNotifications ? _self.numberOfUnreadNotifications : numberOfUnreadNotifications // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
