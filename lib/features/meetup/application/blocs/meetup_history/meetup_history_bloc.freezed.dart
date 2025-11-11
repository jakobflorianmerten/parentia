// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meetup_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MeetupHistoryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeetupHistoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MeetupHistoryEvent()';
}


}

/// @nodoc
class $MeetupHistoryEventCopyWith<$Res>  {
$MeetupHistoryEventCopyWith(MeetupHistoryEvent _, $Res Function(MeetupHistoryEvent) __);
}


/// Adds pattern-matching-related methods to [MeetupHistoryEvent].
extension MeetupHistoryEventPatterns on MeetupHistoryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MeetupHistoryEventLoad value)?  load,TResult Function( MeetupHistoryEventUpdated value)?  updated,TResult Function( MeetupHistoryEventDeleteMeetup value)?  deleteMeetup,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MeetupHistoryEventLoad() when load != null:
return load(_that);case MeetupHistoryEventUpdated() when updated != null:
return updated(_that);case MeetupHistoryEventDeleteMeetup() when deleteMeetup != null:
return deleteMeetup(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MeetupHistoryEventLoad value)  load,required TResult Function( MeetupHistoryEventUpdated value)  updated,required TResult Function( MeetupHistoryEventDeleteMeetup value)  deleteMeetup,}){
final _that = this;
switch (_that) {
case MeetupHistoryEventLoad():
return load(_that);case MeetupHistoryEventUpdated():
return updated(_that);case MeetupHistoryEventDeleteMeetup():
return deleteMeetup(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MeetupHistoryEventLoad value)?  load,TResult? Function( MeetupHistoryEventUpdated value)?  updated,TResult? Function( MeetupHistoryEventDeleteMeetup value)?  deleteMeetup,}){
final _that = this;
switch (_that) {
case MeetupHistoryEventLoad() when load != null:
return load(_that);case MeetupHistoryEventUpdated() when updated != null:
return updated(_that);case MeetupHistoryEventDeleteMeetup() when deleteMeetup != null:
return deleteMeetup(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  load,TResult Function( List<Meetup> meetups)?  updated,TResult Function( String meetupId)?  deleteMeetup,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MeetupHistoryEventLoad() when load != null:
return load();case MeetupHistoryEventUpdated() when updated != null:
return updated(_that.meetups);case MeetupHistoryEventDeleteMeetup() when deleteMeetup != null:
return deleteMeetup(_that.meetupId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  load,required TResult Function( List<Meetup> meetups)  updated,required TResult Function( String meetupId)  deleteMeetup,}) {final _that = this;
switch (_that) {
case MeetupHistoryEventLoad():
return load();case MeetupHistoryEventUpdated():
return updated(_that.meetups);case MeetupHistoryEventDeleteMeetup():
return deleteMeetup(_that.meetupId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  load,TResult? Function( List<Meetup> meetups)?  updated,TResult? Function( String meetupId)?  deleteMeetup,}) {final _that = this;
switch (_that) {
case MeetupHistoryEventLoad() when load != null:
return load();case MeetupHistoryEventUpdated() when updated != null:
return updated(_that.meetups);case MeetupHistoryEventDeleteMeetup() when deleteMeetup != null:
return deleteMeetup(_that.meetupId);case _:
  return null;

}
}

}

/// @nodoc


class MeetupHistoryEventLoad implements MeetupHistoryEvent {
  const MeetupHistoryEventLoad();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeetupHistoryEventLoad);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MeetupHistoryEvent.load()';
}


}




/// @nodoc


class MeetupHistoryEventUpdated implements MeetupHistoryEvent {
  const MeetupHistoryEventUpdated(final  List<Meetup> meetups): _meetups = meetups;
  

 final  List<Meetup> _meetups;
 List<Meetup> get meetups {
  if (_meetups is EqualUnmodifiableListView) return _meetups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_meetups);
}


/// Create a copy of MeetupHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeetupHistoryEventUpdatedCopyWith<MeetupHistoryEventUpdated> get copyWith => _$MeetupHistoryEventUpdatedCopyWithImpl<MeetupHistoryEventUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeetupHistoryEventUpdated&&const DeepCollectionEquality().equals(other._meetups, _meetups));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_meetups));

@override
String toString() {
  return 'MeetupHistoryEvent.updated(meetups: $meetups)';
}


}

/// @nodoc
abstract mixin class $MeetupHistoryEventUpdatedCopyWith<$Res> implements $MeetupHistoryEventCopyWith<$Res> {
  factory $MeetupHistoryEventUpdatedCopyWith(MeetupHistoryEventUpdated value, $Res Function(MeetupHistoryEventUpdated) _then) = _$MeetupHistoryEventUpdatedCopyWithImpl;
@useResult
$Res call({
 List<Meetup> meetups
});




}
/// @nodoc
class _$MeetupHistoryEventUpdatedCopyWithImpl<$Res>
    implements $MeetupHistoryEventUpdatedCopyWith<$Res> {
  _$MeetupHistoryEventUpdatedCopyWithImpl(this._self, this._then);

  final MeetupHistoryEventUpdated _self;
  final $Res Function(MeetupHistoryEventUpdated) _then;

/// Create a copy of MeetupHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? meetups = null,}) {
  return _then(MeetupHistoryEventUpdated(
null == meetups ? _self._meetups : meetups // ignore: cast_nullable_to_non_nullable
as List<Meetup>,
  ));
}


}

/// @nodoc


class MeetupHistoryEventDeleteMeetup implements MeetupHistoryEvent {
  const MeetupHistoryEventDeleteMeetup(this.meetupId);
  

 final  String meetupId;

/// Create a copy of MeetupHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeetupHistoryEventDeleteMeetupCopyWith<MeetupHistoryEventDeleteMeetup> get copyWith => _$MeetupHistoryEventDeleteMeetupCopyWithImpl<MeetupHistoryEventDeleteMeetup>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeetupHistoryEventDeleteMeetup&&(identical(other.meetupId, meetupId) || other.meetupId == meetupId));
}


@override
int get hashCode => Object.hash(runtimeType,meetupId);

@override
String toString() {
  return 'MeetupHistoryEvent.deleteMeetup(meetupId: $meetupId)';
}


}

/// @nodoc
abstract mixin class $MeetupHistoryEventDeleteMeetupCopyWith<$Res> implements $MeetupHistoryEventCopyWith<$Res> {
  factory $MeetupHistoryEventDeleteMeetupCopyWith(MeetupHistoryEventDeleteMeetup value, $Res Function(MeetupHistoryEventDeleteMeetup) _then) = _$MeetupHistoryEventDeleteMeetupCopyWithImpl;
@useResult
$Res call({
 String meetupId
});




}
/// @nodoc
class _$MeetupHistoryEventDeleteMeetupCopyWithImpl<$Res>
    implements $MeetupHistoryEventDeleteMeetupCopyWith<$Res> {
  _$MeetupHistoryEventDeleteMeetupCopyWithImpl(this._self, this._then);

  final MeetupHistoryEventDeleteMeetup _self;
  final $Res Function(MeetupHistoryEventDeleteMeetup) _then;

/// Create a copy of MeetupHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? meetupId = null,}) {
  return _then(MeetupHistoryEventDeleteMeetup(
null == meetupId ? _self.meetupId : meetupId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$MeetupHistoryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeetupHistoryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MeetupHistoryState()';
}


}

/// @nodoc
class $MeetupHistoryStateCopyWith<$Res>  {
$MeetupHistoryStateCopyWith(MeetupHistoryState _, $Res Function(MeetupHistoryState) __);
}


/// Adds pattern-matching-related methods to [MeetupHistoryState].
extension MeetupHistoryStatePatterns on MeetupHistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MeetupHistoryStateInital value)?  inital,TResult Function( MeetupHistoryStateLoading value)?  loading,TResult Function( MeetupHistoryStateSuccess value)?  success,TResult Function( MeetupHistoryStateError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MeetupHistoryStateInital() when inital != null:
return inital(_that);case MeetupHistoryStateLoading() when loading != null:
return loading(_that);case MeetupHistoryStateSuccess() when success != null:
return success(_that);case MeetupHistoryStateError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MeetupHistoryStateInital value)  inital,required TResult Function( MeetupHistoryStateLoading value)  loading,required TResult Function( MeetupHistoryStateSuccess value)  success,required TResult Function( MeetupHistoryStateError value)  error,}){
final _that = this;
switch (_that) {
case MeetupHistoryStateInital():
return inital(_that);case MeetupHistoryStateLoading():
return loading(_that);case MeetupHistoryStateSuccess():
return success(_that);case MeetupHistoryStateError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MeetupHistoryStateInital value)?  inital,TResult? Function( MeetupHistoryStateLoading value)?  loading,TResult? Function( MeetupHistoryStateSuccess value)?  success,TResult? Function( MeetupHistoryStateError value)?  error,}){
final _that = this;
switch (_that) {
case MeetupHistoryStateInital() when inital != null:
return inital(_that);case MeetupHistoryStateLoading() when loading != null:
return loading(_that);case MeetupHistoryStateSuccess() when success != null:
return success(_that);case MeetupHistoryStateError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  inital,TResult Function()?  loading,TResult Function( List<Meetup> meetups)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MeetupHistoryStateInital() when inital != null:
return inital();case MeetupHistoryStateLoading() when loading != null:
return loading();case MeetupHistoryStateSuccess() when success != null:
return success(_that.meetups);case MeetupHistoryStateError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  inital,required TResult Function()  loading,required TResult Function( List<Meetup> meetups)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case MeetupHistoryStateInital():
return inital();case MeetupHistoryStateLoading():
return loading();case MeetupHistoryStateSuccess():
return success(_that.meetups);case MeetupHistoryStateError():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  inital,TResult? Function()?  loading,TResult? Function( List<Meetup> meetups)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case MeetupHistoryStateInital() when inital != null:
return inital();case MeetupHistoryStateLoading() when loading != null:
return loading();case MeetupHistoryStateSuccess() when success != null:
return success(_that.meetups);case MeetupHistoryStateError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class MeetupHistoryStateInital implements MeetupHistoryState {
  const MeetupHistoryStateInital();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeetupHistoryStateInital);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MeetupHistoryState.inital()';
}


}




/// @nodoc


class MeetupHistoryStateLoading implements MeetupHistoryState {
  const MeetupHistoryStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeetupHistoryStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MeetupHistoryState.loading()';
}


}




/// @nodoc


class MeetupHistoryStateSuccess implements MeetupHistoryState {
  const MeetupHistoryStateSuccess(final  List<Meetup> meetups): _meetups = meetups;
  

 final  List<Meetup> _meetups;
 List<Meetup> get meetups {
  if (_meetups is EqualUnmodifiableListView) return _meetups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_meetups);
}


/// Create a copy of MeetupHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeetupHistoryStateSuccessCopyWith<MeetupHistoryStateSuccess> get copyWith => _$MeetupHistoryStateSuccessCopyWithImpl<MeetupHistoryStateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeetupHistoryStateSuccess&&const DeepCollectionEquality().equals(other._meetups, _meetups));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_meetups));

@override
String toString() {
  return 'MeetupHistoryState.success(meetups: $meetups)';
}


}

/// @nodoc
abstract mixin class $MeetupHistoryStateSuccessCopyWith<$Res> implements $MeetupHistoryStateCopyWith<$Res> {
  factory $MeetupHistoryStateSuccessCopyWith(MeetupHistoryStateSuccess value, $Res Function(MeetupHistoryStateSuccess) _then) = _$MeetupHistoryStateSuccessCopyWithImpl;
@useResult
$Res call({
 List<Meetup> meetups
});




}
/// @nodoc
class _$MeetupHistoryStateSuccessCopyWithImpl<$Res>
    implements $MeetupHistoryStateSuccessCopyWith<$Res> {
  _$MeetupHistoryStateSuccessCopyWithImpl(this._self, this._then);

  final MeetupHistoryStateSuccess _self;
  final $Res Function(MeetupHistoryStateSuccess) _then;

/// Create a copy of MeetupHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? meetups = null,}) {
  return _then(MeetupHistoryStateSuccess(
null == meetups ? _self._meetups : meetups // ignore: cast_nullable_to_non_nullable
as List<Meetup>,
  ));
}


}

/// @nodoc


class MeetupHistoryStateError implements MeetupHistoryState {
  const MeetupHistoryStateError(this.message);
  

 final  String message;

/// Create a copy of MeetupHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeetupHistoryStateErrorCopyWith<MeetupHistoryStateError> get copyWith => _$MeetupHistoryStateErrorCopyWithImpl<MeetupHistoryStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeetupHistoryStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MeetupHistoryState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $MeetupHistoryStateErrorCopyWith<$Res> implements $MeetupHistoryStateCopyWith<$Res> {
  factory $MeetupHistoryStateErrorCopyWith(MeetupHistoryStateError value, $Res Function(MeetupHistoryStateError) _then) = _$MeetupHistoryStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$MeetupHistoryStateErrorCopyWithImpl<$Res>
    implements $MeetupHistoryStateErrorCopyWith<$Res> {
  _$MeetupHistoryStateErrorCopyWithImpl(this._self, this._then);

  final MeetupHistoryStateError _self;
  final $Res Function(MeetupHistoryStateError) _then;

/// Create a copy of MeetupHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(MeetupHistoryStateError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
