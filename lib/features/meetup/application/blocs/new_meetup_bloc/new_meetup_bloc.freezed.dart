// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_meetup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NewMeetupEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewMeetupEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewMeetupEvent()';
}


}

/// @nodoc
class $NewMeetupEventCopyWith<$Res>  {
$NewMeetupEventCopyWith(NewMeetupEvent _, $Res Function(NewMeetupEvent) __);
}


/// Adds pattern-matching-related methods to [NewMeetupEvent].
extension NewMeetupEventPatterns on NewMeetupEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SelectedMeetupPartner value)?  selectedMeetupPartner,TResult Function( SelectedDescription value)?  selectedDescription,TResult Function( SelectedMeetupDate value)?  selectedMeetupDate,TResult Function( SubmitMeetup value)?  submitMeetup,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SelectedMeetupPartner() when selectedMeetupPartner != null:
return selectedMeetupPartner(_that);case SelectedDescription() when selectedDescription != null:
return selectedDescription(_that);case SelectedMeetupDate() when selectedMeetupDate != null:
return selectedMeetupDate(_that);case SubmitMeetup() when submitMeetup != null:
return submitMeetup(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SelectedMeetupPartner value)  selectedMeetupPartner,required TResult Function( SelectedDescription value)  selectedDescription,required TResult Function( SelectedMeetupDate value)  selectedMeetupDate,required TResult Function( SubmitMeetup value)  submitMeetup,}){
final _that = this;
switch (_that) {
case SelectedMeetupPartner():
return selectedMeetupPartner(_that);case SelectedDescription():
return selectedDescription(_that);case SelectedMeetupDate():
return selectedMeetupDate(_that);case SubmitMeetup():
return submitMeetup(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SelectedMeetupPartner value)?  selectedMeetupPartner,TResult? Function( SelectedDescription value)?  selectedDescription,TResult? Function( SelectedMeetupDate value)?  selectedMeetupDate,TResult? Function( SubmitMeetup value)?  submitMeetup,}){
final _that = this;
switch (_that) {
case SelectedMeetupPartner() when selectedMeetupPartner != null:
return selectedMeetupPartner(_that);case SelectedDescription() when selectedDescription != null:
return selectedDescription(_that);case SelectedMeetupDate() when selectedMeetupDate != null:
return selectedMeetupDate(_that);case SubmitMeetup() when submitMeetup != null:
return submitMeetup(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( User user)?  selectedMeetupPartner,TResult Function( String description)?  selectedDescription,TResult Function( DateTime date)?  selectedMeetupDate,TResult Function()?  submitMeetup,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SelectedMeetupPartner() when selectedMeetupPartner != null:
return selectedMeetupPartner(_that.user);case SelectedDescription() when selectedDescription != null:
return selectedDescription(_that.description);case SelectedMeetupDate() when selectedMeetupDate != null:
return selectedMeetupDate(_that.date);case SubmitMeetup() when submitMeetup != null:
return submitMeetup();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( User user)  selectedMeetupPartner,required TResult Function( String description)  selectedDescription,required TResult Function( DateTime date)  selectedMeetupDate,required TResult Function()  submitMeetup,}) {final _that = this;
switch (_that) {
case SelectedMeetupPartner():
return selectedMeetupPartner(_that.user);case SelectedDescription():
return selectedDescription(_that.description);case SelectedMeetupDate():
return selectedMeetupDate(_that.date);case SubmitMeetup():
return submitMeetup();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( User user)?  selectedMeetupPartner,TResult? Function( String description)?  selectedDescription,TResult? Function( DateTime date)?  selectedMeetupDate,TResult? Function()?  submitMeetup,}) {final _that = this;
switch (_that) {
case SelectedMeetupPartner() when selectedMeetupPartner != null:
return selectedMeetupPartner(_that.user);case SelectedDescription() when selectedDescription != null:
return selectedDescription(_that.description);case SelectedMeetupDate() when selectedMeetupDate != null:
return selectedMeetupDate(_that.date);case SubmitMeetup() when submitMeetup != null:
return submitMeetup();case _:
  return null;

}
}

}

/// @nodoc


class SelectedMeetupPartner implements NewMeetupEvent {
  const SelectedMeetupPartner(this.user);
  

 final  User user;

/// Create a copy of NewMeetupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectedMeetupPartnerCopyWith<SelectedMeetupPartner> get copyWith => _$SelectedMeetupPartnerCopyWithImpl<SelectedMeetupPartner>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectedMeetupPartner&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'NewMeetupEvent.selectedMeetupPartner(user: $user)';
}


}

/// @nodoc
abstract mixin class $SelectedMeetupPartnerCopyWith<$Res> implements $NewMeetupEventCopyWith<$Res> {
  factory $SelectedMeetupPartnerCopyWith(SelectedMeetupPartner value, $Res Function(SelectedMeetupPartner) _then) = _$SelectedMeetupPartnerCopyWithImpl;
@useResult
$Res call({
 User user
});




}
/// @nodoc
class _$SelectedMeetupPartnerCopyWithImpl<$Res>
    implements $SelectedMeetupPartnerCopyWith<$Res> {
  _$SelectedMeetupPartnerCopyWithImpl(this._self, this._then);

  final SelectedMeetupPartner _self;
  final $Res Function(SelectedMeetupPartner) _then;

/// Create a copy of NewMeetupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(SelectedMeetupPartner(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}


}

/// @nodoc


class SelectedDescription implements NewMeetupEvent {
  const SelectedDescription(this.description);
  

 final  String description;

/// Create a copy of NewMeetupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectedDescriptionCopyWith<SelectedDescription> get copyWith => _$SelectedDescriptionCopyWithImpl<SelectedDescription>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectedDescription&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,description);

@override
String toString() {
  return 'NewMeetupEvent.selectedDescription(description: $description)';
}


}

/// @nodoc
abstract mixin class $SelectedDescriptionCopyWith<$Res> implements $NewMeetupEventCopyWith<$Res> {
  factory $SelectedDescriptionCopyWith(SelectedDescription value, $Res Function(SelectedDescription) _then) = _$SelectedDescriptionCopyWithImpl;
@useResult
$Res call({
 String description
});




}
/// @nodoc
class _$SelectedDescriptionCopyWithImpl<$Res>
    implements $SelectedDescriptionCopyWith<$Res> {
  _$SelectedDescriptionCopyWithImpl(this._self, this._then);

  final SelectedDescription _self;
  final $Res Function(SelectedDescription) _then;

/// Create a copy of NewMeetupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? description = null,}) {
  return _then(SelectedDescription(
null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SelectedMeetupDate implements NewMeetupEvent {
  const SelectedMeetupDate(this.date);
  

 final  DateTime date;

/// Create a copy of NewMeetupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectedMeetupDateCopyWith<SelectedMeetupDate> get copyWith => _$SelectedMeetupDateCopyWithImpl<SelectedMeetupDate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectedMeetupDate&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'NewMeetupEvent.selectedMeetupDate(date: $date)';
}


}

/// @nodoc
abstract mixin class $SelectedMeetupDateCopyWith<$Res> implements $NewMeetupEventCopyWith<$Res> {
  factory $SelectedMeetupDateCopyWith(SelectedMeetupDate value, $Res Function(SelectedMeetupDate) _then) = _$SelectedMeetupDateCopyWithImpl;
@useResult
$Res call({
 DateTime date
});




}
/// @nodoc
class _$SelectedMeetupDateCopyWithImpl<$Res>
    implements $SelectedMeetupDateCopyWith<$Res> {
  _$SelectedMeetupDateCopyWithImpl(this._self, this._then);

  final SelectedMeetupDate _self;
  final $Res Function(SelectedMeetupDate) _then;

/// Create a copy of NewMeetupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? date = null,}) {
  return _then(SelectedMeetupDate(
null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class SubmitMeetup implements NewMeetupEvent {
  const SubmitMeetup();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitMeetup);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewMeetupEvent.submitMeetup()';
}


}




/// @nodoc
mixin _$NewMeetupState {

 bool get isSubmitting; Option<User> get selectedUser; String get description; DateTime get meetupDate; Option<Either<MeetupFailure, Unit>> get failureOrSuccess;
/// Create a copy of NewMeetupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewMeetupStateCopyWith<NewMeetupState> get copyWith => _$NewMeetupStateCopyWithImpl<NewMeetupState>(this as NewMeetupState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewMeetupState&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.selectedUser, selectedUser) || other.selectedUser == selectedUser)&&(identical(other.description, description) || other.description == description)&&(identical(other.meetupDate, meetupDate) || other.meetupDate == meetupDate)&&(identical(other.failureOrSuccess, failureOrSuccess) || other.failureOrSuccess == failureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isSubmitting,selectedUser,description,meetupDate,failureOrSuccess);

@override
String toString() {
  return 'NewMeetupState(isSubmitting: $isSubmitting, selectedUser: $selectedUser, description: $description, meetupDate: $meetupDate, failureOrSuccess: $failureOrSuccess)';
}


}

/// @nodoc
abstract mixin class $NewMeetupStateCopyWith<$Res>  {
  factory $NewMeetupStateCopyWith(NewMeetupState value, $Res Function(NewMeetupState) _then) = _$NewMeetupStateCopyWithImpl;
@useResult
$Res call({
 bool isSubmitting, Option<User> selectedUser, String description, DateTime meetupDate, Option<Either<MeetupFailure, Unit>> failureOrSuccess
});




}
/// @nodoc
class _$NewMeetupStateCopyWithImpl<$Res>
    implements $NewMeetupStateCopyWith<$Res> {
  _$NewMeetupStateCopyWithImpl(this._self, this._then);

  final NewMeetupState _self;
  final $Res Function(NewMeetupState) _then;

/// Create a copy of NewMeetupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSubmitting = null,Object? selectedUser = null,Object? description = null,Object? meetupDate = null,Object? failureOrSuccess = null,}) {
  return _then(_self.copyWith(
isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,selectedUser: null == selectedUser ? _self.selectedUser : selectedUser // ignore: cast_nullable_to_non_nullable
as Option<User>,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,meetupDate: null == meetupDate ? _self.meetupDate : meetupDate // ignore: cast_nullable_to_non_nullable
as DateTime,failureOrSuccess: null == failureOrSuccess ? _self.failureOrSuccess : failureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<MeetupFailure, Unit>>,
  ));
}

}


/// Adds pattern-matching-related methods to [NewMeetupState].
extension NewMeetupStatePatterns on NewMeetupState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NewMeetupState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NewMeetupState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NewMeetupState value)  $default,){
final _that = this;
switch (_that) {
case _NewMeetupState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NewMeetupState value)?  $default,){
final _that = this;
switch (_that) {
case _NewMeetupState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isSubmitting,  Option<User> selectedUser,  String description,  DateTime meetupDate,  Option<Either<MeetupFailure, Unit>> failureOrSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NewMeetupState() when $default != null:
return $default(_that.isSubmitting,_that.selectedUser,_that.description,_that.meetupDate,_that.failureOrSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isSubmitting,  Option<User> selectedUser,  String description,  DateTime meetupDate,  Option<Either<MeetupFailure, Unit>> failureOrSuccess)  $default,) {final _that = this;
switch (_that) {
case _NewMeetupState():
return $default(_that.isSubmitting,_that.selectedUser,_that.description,_that.meetupDate,_that.failureOrSuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isSubmitting,  Option<User> selectedUser,  String description,  DateTime meetupDate,  Option<Either<MeetupFailure, Unit>> failureOrSuccess)?  $default,) {final _that = this;
switch (_that) {
case _NewMeetupState() when $default != null:
return $default(_that.isSubmitting,_that.selectedUser,_that.description,_that.meetupDate,_that.failureOrSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _NewMeetupState implements NewMeetupState {
  const _NewMeetupState({required this.isSubmitting, required this.selectedUser, required this.description, required this.meetupDate, required this.failureOrSuccess});
  

@override final  bool isSubmitting;
@override final  Option<User> selectedUser;
@override final  String description;
@override final  DateTime meetupDate;
@override final  Option<Either<MeetupFailure, Unit>> failureOrSuccess;

/// Create a copy of NewMeetupState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewMeetupStateCopyWith<_NewMeetupState> get copyWith => __$NewMeetupStateCopyWithImpl<_NewMeetupState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewMeetupState&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.selectedUser, selectedUser) || other.selectedUser == selectedUser)&&(identical(other.description, description) || other.description == description)&&(identical(other.meetupDate, meetupDate) || other.meetupDate == meetupDate)&&(identical(other.failureOrSuccess, failureOrSuccess) || other.failureOrSuccess == failureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isSubmitting,selectedUser,description,meetupDate,failureOrSuccess);

@override
String toString() {
  return 'NewMeetupState(isSubmitting: $isSubmitting, selectedUser: $selectedUser, description: $description, meetupDate: $meetupDate, failureOrSuccess: $failureOrSuccess)';
}


}

/// @nodoc
abstract mixin class _$NewMeetupStateCopyWith<$Res> implements $NewMeetupStateCopyWith<$Res> {
  factory _$NewMeetupStateCopyWith(_NewMeetupState value, $Res Function(_NewMeetupState) _then) = __$NewMeetupStateCopyWithImpl;
@override @useResult
$Res call({
 bool isSubmitting, Option<User> selectedUser, String description, DateTime meetupDate, Option<Either<MeetupFailure, Unit>> failureOrSuccess
});




}
/// @nodoc
class __$NewMeetupStateCopyWithImpl<$Res>
    implements _$NewMeetupStateCopyWith<$Res> {
  __$NewMeetupStateCopyWithImpl(this._self, this._then);

  final _NewMeetupState _self;
  final $Res Function(_NewMeetupState) _then;

/// Create a copy of NewMeetupState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSubmitting = null,Object? selectedUser = null,Object? description = null,Object? meetupDate = null,Object? failureOrSuccess = null,}) {
  return _then(_NewMeetupState(
isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,selectedUser: null == selectedUser ? _self.selectedUser : selectedUser // ignore: cast_nullable_to_non_nullable
as Option<User>,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,meetupDate: null == meetupDate ? _self.meetupDate : meetupDate // ignore: cast_nullable_to_non_nullable
as DateTime,failureOrSuccess: null == failureOrSuccess ? _self.failureOrSuccess : failureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<MeetupFailure, Unit>>,
  ));
}


}

// dart format on
