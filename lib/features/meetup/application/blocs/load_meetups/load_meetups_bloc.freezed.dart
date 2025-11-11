// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'load_meetups_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoadMeetupsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMeetupsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadMeetupsEvent()';
}


}

/// @nodoc
class $LoadMeetupsEventCopyWith<$Res>  {
$LoadMeetupsEventCopyWith(LoadMeetupsEvent _, $Res Function(LoadMeetupsEvent) __);
}


/// Adds pattern-matching-related methods to [LoadMeetupsEvent].
extension LoadMeetupsEventPatterns on LoadMeetupsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadMeetups value)?  loadMeetups,TResult Function( UpdateMeetups value)?  updateMeetups,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadMeetups() when loadMeetups != null:
return loadMeetups(_that);case UpdateMeetups() when updateMeetups != null:
return updateMeetups(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadMeetups value)  loadMeetups,required TResult Function( UpdateMeetups value)  updateMeetups,}){
final _that = this;
switch (_that) {
case LoadMeetups():
return loadMeetups(_that);case UpdateMeetups():
return updateMeetups(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadMeetups value)?  loadMeetups,TResult? Function( UpdateMeetups value)?  updateMeetups,}){
final _that = this;
switch (_that) {
case LoadMeetups() when loadMeetups != null:
return loadMeetups(_that);case UpdateMeetups() when updateMeetups != null:
return updateMeetups(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadMeetups,TResult Function( List<Meetup> meetups)?  updateMeetups,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadMeetups() when loadMeetups != null:
return loadMeetups();case UpdateMeetups() when updateMeetups != null:
return updateMeetups(_that.meetups);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadMeetups,required TResult Function( List<Meetup> meetups)  updateMeetups,}) {final _that = this;
switch (_that) {
case LoadMeetups():
return loadMeetups();case UpdateMeetups():
return updateMeetups(_that.meetups);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadMeetups,TResult? Function( List<Meetup> meetups)?  updateMeetups,}) {final _that = this;
switch (_that) {
case LoadMeetups() when loadMeetups != null:
return loadMeetups();case UpdateMeetups() when updateMeetups != null:
return updateMeetups(_that.meetups);case _:
  return null;

}
}

}

/// @nodoc


class LoadMeetups implements LoadMeetupsEvent {
  const LoadMeetups();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMeetups);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadMeetupsEvent.loadMeetups()';
}


}




/// @nodoc


class UpdateMeetups implements LoadMeetupsEvent {
  const UpdateMeetups(final  List<Meetup> meetups): _meetups = meetups;
  

 final  List<Meetup> _meetups;
 List<Meetup> get meetups {
  if (_meetups is EqualUnmodifiableListView) return _meetups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_meetups);
}


/// Create a copy of LoadMeetupsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateMeetupsCopyWith<UpdateMeetups> get copyWith => _$UpdateMeetupsCopyWithImpl<UpdateMeetups>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateMeetups&&const DeepCollectionEquality().equals(other._meetups, _meetups));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_meetups));

@override
String toString() {
  return 'LoadMeetupsEvent.updateMeetups(meetups: $meetups)';
}


}

/// @nodoc
abstract mixin class $UpdateMeetupsCopyWith<$Res> implements $LoadMeetupsEventCopyWith<$Res> {
  factory $UpdateMeetupsCopyWith(UpdateMeetups value, $Res Function(UpdateMeetups) _then) = _$UpdateMeetupsCopyWithImpl;
@useResult
$Res call({
 List<Meetup> meetups
});




}
/// @nodoc
class _$UpdateMeetupsCopyWithImpl<$Res>
    implements $UpdateMeetupsCopyWith<$Res> {
  _$UpdateMeetupsCopyWithImpl(this._self, this._then);

  final UpdateMeetups _self;
  final $Res Function(UpdateMeetups) _then;

/// Create a copy of LoadMeetupsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? meetups = null,}) {
  return _then(UpdateMeetups(
null == meetups ? _self._meetups : meetups // ignore: cast_nullable_to_non_nullable
as List<Meetup>,
  ));
}


}

/// @nodoc
mixin _$LoadMeetupsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMeetupsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadMeetupsState()';
}


}

/// @nodoc
class $LoadMeetupsStateCopyWith<$Res>  {
$LoadMeetupsStateCopyWith(LoadMeetupsState _, $Res Function(LoadMeetupsState) __);
}


/// Adds pattern-matching-related methods to [LoadMeetupsState].
extension LoadMeetupsStatePatterns on LoadMeetupsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadMeetupsStateInitial value)?  initial,TResult Function( LoadMeetupsStateLoading value)?  loading,TResult Function( LoadMeetupsStateSuccess value)?  success,TResult Function( LoadMeetupsStateError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadMeetupsStateInitial() when initial != null:
return initial(_that);case LoadMeetupsStateLoading() when loading != null:
return loading(_that);case LoadMeetupsStateSuccess() when success != null:
return success(_that);case LoadMeetupsStateError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadMeetupsStateInitial value)  initial,required TResult Function( LoadMeetupsStateLoading value)  loading,required TResult Function( LoadMeetupsStateSuccess value)  success,required TResult Function( LoadMeetupsStateError value)  error,}){
final _that = this;
switch (_that) {
case LoadMeetupsStateInitial():
return initial(_that);case LoadMeetupsStateLoading():
return loading(_that);case LoadMeetupsStateSuccess():
return success(_that);case LoadMeetupsStateError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadMeetupsStateInitial value)?  initial,TResult? Function( LoadMeetupsStateLoading value)?  loading,TResult? Function( LoadMeetupsStateSuccess value)?  success,TResult? Function( LoadMeetupsStateError value)?  error,}){
final _that = this;
switch (_that) {
case LoadMeetupsStateInitial() when initial != null:
return initial(_that);case LoadMeetupsStateLoading() when loading != null:
return loading(_that);case LoadMeetupsStateSuccess() when success != null:
return success(_that);case LoadMeetupsStateError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Meetup> activeMeetups,  List<Meetup> notActiveMeetups)?  success,TResult Function( String errorMessage)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadMeetupsStateInitial() when initial != null:
return initial();case LoadMeetupsStateLoading() when loading != null:
return loading();case LoadMeetupsStateSuccess() when success != null:
return success(_that.activeMeetups,_that.notActiveMeetups);case LoadMeetupsStateError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Meetup> activeMeetups,  List<Meetup> notActiveMeetups)  success,required TResult Function( String errorMessage)  error,}) {final _that = this;
switch (_that) {
case LoadMeetupsStateInitial():
return initial();case LoadMeetupsStateLoading():
return loading();case LoadMeetupsStateSuccess():
return success(_that.activeMeetups,_that.notActiveMeetups);case LoadMeetupsStateError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Meetup> activeMeetups,  List<Meetup> notActiveMeetups)?  success,TResult? Function( String errorMessage)?  error,}) {final _that = this;
switch (_that) {
case LoadMeetupsStateInitial() when initial != null:
return initial();case LoadMeetupsStateLoading() when loading != null:
return loading();case LoadMeetupsStateSuccess() when success != null:
return success(_that.activeMeetups,_that.notActiveMeetups);case LoadMeetupsStateError() when error != null:
return error(_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class LoadMeetupsStateInitial implements LoadMeetupsState {
  const LoadMeetupsStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMeetupsStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadMeetupsState.initial()';
}


}




/// @nodoc


class LoadMeetupsStateLoading implements LoadMeetupsState {
  const LoadMeetupsStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMeetupsStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadMeetupsState.loading()';
}


}




/// @nodoc


class LoadMeetupsStateSuccess implements LoadMeetupsState {
  const LoadMeetupsStateSuccess(final  List<Meetup> activeMeetups, final  List<Meetup> notActiveMeetups): _activeMeetups = activeMeetups,_notActiveMeetups = notActiveMeetups;
  

 final  List<Meetup> _activeMeetups;
 List<Meetup> get activeMeetups {
  if (_activeMeetups is EqualUnmodifiableListView) return _activeMeetups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_activeMeetups);
}

 final  List<Meetup> _notActiveMeetups;
 List<Meetup> get notActiveMeetups {
  if (_notActiveMeetups is EqualUnmodifiableListView) return _notActiveMeetups;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notActiveMeetups);
}


/// Create a copy of LoadMeetupsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadMeetupsStateSuccessCopyWith<LoadMeetupsStateSuccess> get copyWith => _$LoadMeetupsStateSuccessCopyWithImpl<LoadMeetupsStateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMeetupsStateSuccess&&const DeepCollectionEquality().equals(other._activeMeetups, _activeMeetups)&&const DeepCollectionEquality().equals(other._notActiveMeetups, _notActiveMeetups));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_activeMeetups),const DeepCollectionEquality().hash(_notActiveMeetups));

@override
String toString() {
  return 'LoadMeetupsState.success(activeMeetups: $activeMeetups, notActiveMeetups: $notActiveMeetups)';
}


}

/// @nodoc
abstract mixin class $LoadMeetupsStateSuccessCopyWith<$Res> implements $LoadMeetupsStateCopyWith<$Res> {
  factory $LoadMeetupsStateSuccessCopyWith(LoadMeetupsStateSuccess value, $Res Function(LoadMeetupsStateSuccess) _then) = _$LoadMeetupsStateSuccessCopyWithImpl;
@useResult
$Res call({
 List<Meetup> activeMeetups, List<Meetup> notActiveMeetups
});




}
/// @nodoc
class _$LoadMeetupsStateSuccessCopyWithImpl<$Res>
    implements $LoadMeetupsStateSuccessCopyWith<$Res> {
  _$LoadMeetupsStateSuccessCopyWithImpl(this._self, this._then);

  final LoadMeetupsStateSuccess _self;
  final $Res Function(LoadMeetupsStateSuccess) _then;

/// Create a copy of LoadMeetupsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? activeMeetups = null,Object? notActiveMeetups = null,}) {
  return _then(LoadMeetupsStateSuccess(
null == activeMeetups ? _self._activeMeetups : activeMeetups // ignore: cast_nullable_to_non_nullable
as List<Meetup>,null == notActiveMeetups ? _self._notActiveMeetups : notActiveMeetups // ignore: cast_nullable_to_non_nullable
as List<Meetup>,
  ));
}


}

/// @nodoc


class LoadMeetupsStateError implements LoadMeetupsState {
  const LoadMeetupsStateError(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of LoadMeetupsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadMeetupsStateErrorCopyWith<LoadMeetupsStateError> get copyWith => _$LoadMeetupsStateErrorCopyWithImpl<LoadMeetupsStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMeetupsStateError&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'LoadMeetupsState.error(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $LoadMeetupsStateErrorCopyWith<$Res> implements $LoadMeetupsStateCopyWith<$Res> {
  factory $LoadMeetupsStateErrorCopyWith(LoadMeetupsStateError value, $Res Function(LoadMeetupsStateError) _then) = _$LoadMeetupsStateErrorCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$LoadMeetupsStateErrorCopyWithImpl<$Res>
    implements $LoadMeetupsStateErrorCopyWith<$Res> {
  _$LoadMeetupsStateErrorCopyWithImpl(this._self, this._then);

  final LoadMeetupsStateError _self;
  final $Res Function(LoadMeetupsStateError) _then;

/// Create a copy of LoadMeetupsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(LoadMeetupsStateError(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
