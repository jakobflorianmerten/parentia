// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meetup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MeetupEvent {

 String get meetupId;
/// Create a copy of MeetupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeetupEventCopyWith<MeetupEvent> get copyWith => _$MeetupEventCopyWithImpl<MeetupEvent>(this as MeetupEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeetupEvent&&(identical(other.meetupId, meetupId) || other.meetupId == meetupId));
}


@override
int get hashCode => Object.hash(runtimeType,meetupId);

@override
String toString() {
  return 'MeetupEvent(meetupId: $meetupId)';
}


}

/// @nodoc
abstract mixin class $MeetupEventCopyWith<$Res>  {
  factory $MeetupEventCopyWith(MeetupEvent value, $Res Function(MeetupEvent) _then) = _$MeetupEventCopyWithImpl;
@useResult
$Res call({
 String meetupId
});




}
/// @nodoc
class _$MeetupEventCopyWithImpl<$Res>
    implements $MeetupEventCopyWith<$Res> {
  _$MeetupEventCopyWithImpl(this._self, this._then);

  final MeetupEvent _self;
  final $Res Function(MeetupEvent) _then;

/// Create a copy of MeetupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? meetupId = null,}) {
  return _then(_self.copyWith(
meetupId: null == meetupId ? _self.meetupId : meetupId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MeetupEvent].
extension MeetupEventPatterns on MeetupEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AcceptMeetup value)?  acceptMeetup,TResult Function( RejectMeetup value)?  rejectMeetup,TResult Function( PayMeetup value)?  payMeetup,TResult Function( AcceptPayment value)?  acceptPayment,TResult Function( RejectPayment value)?  rejectPayment,TResult Function( DeleteMeetup value)?  deleteMeetup,TResult Function( EditMeetup value)?  editMeetup,TResult Function( AcceptChanges value)?  acceptChanges,TResult Function( RejectChanges value)?  rejectChanges,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AcceptMeetup() when acceptMeetup != null:
return acceptMeetup(_that);case RejectMeetup() when rejectMeetup != null:
return rejectMeetup(_that);case PayMeetup() when payMeetup != null:
return payMeetup(_that);case AcceptPayment() when acceptPayment != null:
return acceptPayment(_that);case RejectPayment() when rejectPayment != null:
return rejectPayment(_that);case DeleteMeetup() when deleteMeetup != null:
return deleteMeetup(_that);case EditMeetup() when editMeetup != null:
return editMeetup(_that);case AcceptChanges() when acceptChanges != null:
return acceptChanges(_that);case RejectChanges() when rejectChanges != null:
return rejectChanges(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AcceptMeetup value)  acceptMeetup,required TResult Function( RejectMeetup value)  rejectMeetup,required TResult Function( PayMeetup value)  payMeetup,required TResult Function( AcceptPayment value)  acceptPayment,required TResult Function( RejectPayment value)  rejectPayment,required TResult Function( DeleteMeetup value)  deleteMeetup,required TResult Function( EditMeetup value)  editMeetup,required TResult Function( AcceptChanges value)  acceptChanges,required TResult Function( RejectChanges value)  rejectChanges,}){
final _that = this;
switch (_that) {
case AcceptMeetup():
return acceptMeetup(_that);case RejectMeetup():
return rejectMeetup(_that);case PayMeetup():
return payMeetup(_that);case AcceptPayment():
return acceptPayment(_that);case RejectPayment():
return rejectPayment(_that);case DeleteMeetup():
return deleteMeetup(_that);case EditMeetup():
return editMeetup(_that);case AcceptChanges():
return acceptChanges(_that);case RejectChanges():
return rejectChanges(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AcceptMeetup value)?  acceptMeetup,TResult? Function( RejectMeetup value)?  rejectMeetup,TResult? Function( PayMeetup value)?  payMeetup,TResult? Function( AcceptPayment value)?  acceptPayment,TResult? Function( RejectPayment value)?  rejectPayment,TResult? Function( DeleteMeetup value)?  deleteMeetup,TResult? Function( EditMeetup value)?  editMeetup,TResult? Function( AcceptChanges value)?  acceptChanges,TResult? Function( RejectChanges value)?  rejectChanges,}){
final _that = this;
switch (_that) {
case AcceptMeetup() when acceptMeetup != null:
return acceptMeetup(_that);case RejectMeetup() when rejectMeetup != null:
return rejectMeetup(_that);case PayMeetup() when payMeetup != null:
return payMeetup(_that);case AcceptPayment() when acceptPayment != null:
return acceptPayment(_that);case RejectPayment() when rejectPayment != null:
return rejectPayment(_that);case DeleteMeetup() when deleteMeetup != null:
return deleteMeetup(_that);case EditMeetup() when editMeetup != null:
return editMeetup(_that);case AcceptChanges() when acceptChanges != null:
return acceptChanges(_that);case RejectChanges() when rejectChanges != null:
return rejectChanges(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String meetupId)?  acceptMeetup,TResult Function( String meetupId)?  rejectMeetup,TResult Function( String meetupId)?  payMeetup,TResult Function( String meetupId)?  acceptPayment,TResult Function( String meetupId)?  rejectPayment,TResult Function( String meetupId)?  deleteMeetup,TResult Function( String meetupId,  String newDescription,  DateTime newMeetupDate)?  editMeetup,TResult Function( String meetupId)?  acceptChanges,TResult Function( String meetupId)?  rejectChanges,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AcceptMeetup() when acceptMeetup != null:
return acceptMeetup(_that.meetupId);case RejectMeetup() when rejectMeetup != null:
return rejectMeetup(_that.meetupId);case PayMeetup() when payMeetup != null:
return payMeetup(_that.meetupId);case AcceptPayment() when acceptPayment != null:
return acceptPayment(_that.meetupId);case RejectPayment() when rejectPayment != null:
return rejectPayment(_that.meetupId);case DeleteMeetup() when deleteMeetup != null:
return deleteMeetup(_that.meetupId);case EditMeetup() when editMeetup != null:
return editMeetup(_that.meetupId,_that.newDescription,_that.newMeetupDate);case AcceptChanges() when acceptChanges != null:
return acceptChanges(_that.meetupId);case RejectChanges() when rejectChanges != null:
return rejectChanges(_that.meetupId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String meetupId)  acceptMeetup,required TResult Function( String meetupId)  rejectMeetup,required TResult Function( String meetupId)  payMeetup,required TResult Function( String meetupId)  acceptPayment,required TResult Function( String meetupId)  rejectPayment,required TResult Function( String meetupId)  deleteMeetup,required TResult Function( String meetupId,  String newDescription,  DateTime newMeetupDate)  editMeetup,required TResult Function( String meetupId)  acceptChanges,required TResult Function( String meetupId)  rejectChanges,}) {final _that = this;
switch (_that) {
case AcceptMeetup():
return acceptMeetup(_that.meetupId);case RejectMeetup():
return rejectMeetup(_that.meetupId);case PayMeetup():
return payMeetup(_that.meetupId);case AcceptPayment():
return acceptPayment(_that.meetupId);case RejectPayment():
return rejectPayment(_that.meetupId);case DeleteMeetup():
return deleteMeetup(_that.meetupId);case EditMeetup():
return editMeetup(_that.meetupId,_that.newDescription,_that.newMeetupDate);case AcceptChanges():
return acceptChanges(_that.meetupId);case RejectChanges():
return rejectChanges(_that.meetupId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String meetupId)?  acceptMeetup,TResult? Function( String meetupId)?  rejectMeetup,TResult? Function( String meetupId)?  payMeetup,TResult? Function( String meetupId)?  acceptPayment,TResult? Function( String meetupId)?  rejectPayment,TResult? Function( String meetupId)?  deleteMeetup,TResult? Function( String meetupId,  String newDescription,  DateTime newMeetupDate)?  editMeetup,TResult? Function( String meetupId)?  acceptChanges,TResult? Function( String meetupId)?  rejectChanges,}) {final _that = this;
switch (_that) {
case AcceptMeetup() when acceptMeetup != null:
return acceptMeetup(_that.meetupId);case RejectMeetup() when rejectMeetup != null:
return rejectMeetup(_that.meetupId);case PayMeetup() when payMeetup != null:
return payMeetup(_that.meetupId);case AcceptPayment() when acceptPayment != null:
return acceptPayment(_that.meetupId);case RejectPayment() when rejectPayment != null:
return rejectPayment(_that.meetupId);case DeleteMeetup() when deleteMeetup != null:
return deleteMeetup(_that.meetupId);case EditMeetup() when editMeetup != null:
return editMeetup(_that.meetupId,_that.newDescription,_that.newMeetupDate);case AcceptChanges() when acceptChanges != null:
return acceptChanges(_that.meetupId);case RejectChanges() when rejectChanges != null:
return rejectChanges(_that.meetupId);case _:
  return null;

}
}

}

/// @nodoc


class AcceptMeetup implements MeetupEvent {
  const AcceptMeetup(this.meetupId);
  

@override final  String meetupId;

/// Create a copy of MeetupEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcceptMeetupCopyWith<AcceptMeetup> get copyWith => _$AcceptMeetupCopyWithImpl<AcceptMeetup>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcceptMeetup&&(identical(other.meetupId, meetupId) || other.meetupId == meetupId));
}


@override
int get hashCode => Object.hash(runtimeType,meetupId);

@override
String toString() {
  return 'MeetupEvent.acceptMeetup(meetupId: $meetupId)';
}


}

/// @nodoc
abstract mixin class $AcceptMeetupCopyWith<$Res> implements $MeetupEventCopyWith<$Res> {
  factory $AcceptMeetupCopyWith(AcceptMeetup value, $Res Function(AcceptMeetup) _then) = _$AcceptMeetupCopyWithImpl;
@override @useResult
$Res call({
 String meetupId
});




}
/// @nodoc
class _$AcceptMeetupCopyWithImpl<$Res>
    implements $AcceptMeetupCopyWith<$Res> {
  _$AcceptMeetupCopyWithImpl(this._self, this._then);

  final AcceptMeetup _self;
  final $Res Function(AcceptMeetup) _then;

/// Create a copy of MeetupEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meetupId = null,}) {
  return _then(AcceptMeetup(
null == meetupId ? _self.meetupId : meetupId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RejectMeetup implements MeetupEvent {
  const RejectMeetup(this.meetupId);
  

@override final  String meetupId;

/// Create a copy of MeetupEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RejectMeetupCopyWith<RejectMeetup> get copyWith => _$RejectMeetupCopyWithImpl<RejectMeetup>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RejectMeetup&&(identical(other.meetupId, meetupId) || other.meetupId == meetupId));
}


@override
int get hashCode => Object.hash(runtimeType,meetupId);

@override
String toString() {
  return 'MeetupEvent.rejectMeetup(meetupId: $meetupId)';
}


}

/// @nodoc
abstract mixin class $RejectMeetupCopyWith<$Res> implements $MeetupEventCopyWith<$Res> {
  factory $RejectMeetupCopyWith(RejectMeetup value, $Res Function(RejectMeetup) _then) = _$RejectMeetupCopyWithImpl;
@override @useResult
$Res call({
 String meetupId
});




}
/// @nodoc
class _$RejectMeetupCopyWithImpl<$Res>
    implements $RejectMeetupCopyWith<$Res> {
  _$RejectMeetupCopyWithImpl(this._self, this._then);

  final RejectMeetup _self;
  final $Res Function(RejectMeetup) _then;

/// Create a copy of MeetupEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meetupId = null,}) {
  return _then(RejectMeetup(
null == meetupId ? _self.meetupId : meetupId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PayMeetup implements MeetupEvent {
  const PayMeetup(this.meetupId);
  

@override final  String meetupId;

/// Create a copy of MeetupEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayMeetupCopyWith<PayMeetup> get copyWith => _$PayMeetupCopyWithImpl<PayMeetup>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PayMeetup&&(identical(other.meetupId, meetupId) || other.meetupId == meetupId));
}


@override
int get hashCode => Object.hash(runtimeType,meetupId);

@override
String toString() {
  return 'MeetupEvent.payMeetup(meetupId: $meetupId)';
}


}

/// @nodoc
abstract mixin class $PayMeetupCopyWith<$Res> implements $MeetupEventCopyWith<$Res> {
  factory $PayMeetupCopyWith(PayMeetup value, $Res Function(PayMeetup) _then) = _$PayMeetupCopyWithImpl;
@override @useResult
$Res call({
 String meetupId
});




}
/// @nodoc
class _$PayMeetupCopyWithImpl<$Res>
    implements $PayMeetupCopyWith<$Res> {
  _$PayMeetupCopyWithImpl(this._self, this._then);

  final PayMeetup _self;
  final $Res Function(PayMeetup) _then;

/// Create a copy of MeetupEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meetupId = null,}) {
  return _then(PayMeetup(
null == meetupId ? _self.meetupId : meetupId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AcceptPayment implements MeetupEvent {
  const AcceptPayment(this.meetupId);
  

@override final  String meetupId;

/// Create a copy of MeetupEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcceptPaymentCopyWith<AcceptPayment> get copyWith => _$AcceptPaymentCopyWithImpl<AcceptPayment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcceptPayment&&(identical(other.meetupId, meetupId) || other.meetupId == meetupId));
}


@override
int get hashCode => Object.hash(runtimeType,meetupId);

@override
String toString() {
  return 'MeetupEvent.acceptPayment(meetupId: $meetupId)';
}


}

/// @nodoc
abstract mixin class $AcceptPaymentCopyWith<$Res> implements $MeetupEventCopyWith<$Res> {
  factory $AcceptPaymentCopyWith(AcceptPayment value, $Res Function(AcceptPayment) _then) = _$AcceptPaymentCopyWithImpl;
@override @useResult
$Res call({
 String meetupId
});




}
/// @nodoc
class _$AcceptPaymentCopyWithImpl<$Res>
    implements $AcceptPaymentCopyWith<$Res> {
  _$AcceptPaymentCopyWithImpl(this._self, this._then);

  final AcceptPayment _self;
  final $Res Function(AcceptPayment) _then;

/// Create a copy of MeetupEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meetupId = null,}) {
  return _then(AcceptPayment(
null == meetupId ? _self.meetupId : meetupId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RejectPayment implements MeetupEvent {
  const RejectPayment(this.meetupId);
  

@override final  String meetupId;

/// Create a copy of MeetupEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RejectPaymentCopyWith<RejectPayment> get copyWith => _$RejectPaymentCopyWithImpl<RejectPayment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RejectPayment&&(identical(other.meetupId, meetupId) || other.meetupId == meetupId));
}


@override
int get hashCode => Object.hash(runtimeType,meetupId);

@override
String toString() {
  return 'MeetupEvent.rejectPayment(meetupId: $meetupId)';
}


}

/// @nodoc
abstract mixin class $RejectPaymentCopyWith<$Res> implements $MeetupEventCopyWith<$Res> {
  factory $RejectPaymentCopyWith(RejectPayment value, $Res Function(RejectPayment) _then) = _$RejectPaymentCopyWithImpl;
@override @useResult
$Res call({
 String meetupId
});




}
/// @nodoc
class _$RejectPaymentCopyWithImpl<$Res>
    implements $RejectPaymentCopyWith<$Res> {
  _$RejectPaymentCopyWithImpl(this._self, this._then);

  final RejectPayment _self;
  final $Res Function(RejectPayment) _then;

/// Create a copy of MeetupEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meetupId = null,}) {
  return _then(RejectPayment(
null == meetupId ? _self.meetupId : meetupId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DeleteMeetup implements MeetupEvent {
  const DeleteMeetup(this.meetupId);
  

@override final  String meetupId;

/// Create a copy of MeetupEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteMeetupCopyWith<DeleteMeetup> get copyWith => _$DeleteMeetupCopyWithImpl<DeleteMeetup>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteMeetup&&(identical(other.meetupId, meetupId) || other.meetupId == meetupId));
}


@override
int get hashCode => Object.hash(runtimeType,meetupId);

@override
String toString() {
  return 'MeetupEvent.deleteMeetup(meetupId: $meetupId)';
}


}

/// @nodoc
abstract mixin class $DeleteMeetupCopyWith<$Res> implements $MeetupEventCopyWith<$Res> {
  factory $DeleteMeetupCopyWith(DeleteMeetup value, $Res Function(DeleteMeetup) _then) = _$DeleteMeetupCopyWithImpl;
@override @useResult
$Res call({
 String meetupId
});




}
/// @nodoc
class _$DeleteMeetupCopyWithImpl<$Res>
    implements $DeleteMeetupCopyWith<$Res> {
  _$DeleteMeetupCopyWithImpl(this._self, this._then);

  final DeleteMeetup _self;
  final $Res Function(DeleteMeetup) _then;

/// Create a copy of MeetupEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meetupId = null,}) {
  return _then(DeleteMeetup(
null == meetupId ? _self.meetupId : meetupId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class EditMeetup implements MeetupEvent {
  const EditMeetup(this.meetupId, this.newDescription, this.newMeetupDate);
  

@override final  String meetupId;
 final  String newDescription;
 final  DateTime newMeetupDate;

/// Create a copy of MeetupEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditMeetupCopyWith<EditMeetup> get copyWith => _$EditMeetupCopyWithImpl<EditMeetup>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditMeetup&&(identical(other.meetupId, meetupId) || other.meetupId == meetupId)&&(identical(other.newDescription, newDescription) || other.newDescription == newDescription)&&(identical(other.newMeetupDate, newMeetupDate) || other.newMeetupDate == newMeetupDate));
}


@override
int get hashCode => Object.hash(runtimeType,meetupId,newDescription,newMeetupDate);

@override
String toString() {
  return 'MeetupEvent.editMeetup(meetupId: $meetupId, newDescription: $newDescription, newMeetupDate: $newMeetupDate)';
}


}

/// @nodoc
abstract mixin class $EditMeetupCopyWith<$Res> implements $MeetupEventCopyWith<$Res> {
  factory $EditMeetupCopyWith(EditMeetup value, $Res Function(EditMeetup) _then) = _$EditMeetupCopyWithImpl;
@override @useResult
$Res call({
 String meetupId, String newDescription, DateTime newMeetupDate
});




}
/// @nodoc
class _$EditMeetupCopyWithImpl<$Res>
    implements $EditMeetupCopyWith<$Res> {
  _$EditMeetupCopyWithImpl(this._self, this._then);

  final EditMeetup _self;
  final $Res Function(EditMeetup) _then;

/// Create a copy of MeetupEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meetupId = null,Object? newDescription = null,Object? newMeetupDate = null,}) {
  return _then(EditMeetup(
null == meetupId ? _self.meetupId : meetupId // ignore: cast_nullable_to_non_nullable
as String,null == newDescription ? _self.newDescription : newDescription // ignore: cast_nullable_to_non_nullable
as String,null == newMeetupDate ? _self.newMeetupDate : newMeetupDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class AcceptChanges implements MeetupEvent {
  const AcceptChanges(this.meetupId);
  

@override final  String meetupId;

/// Create a copy of MeetupEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcceptChangesCopyWith<AcceptChanges> get copyWith => _$AcceptChangesCopyWithImpl<AcceptChanges>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcceptChanges&&(identical(other.meetupId, meetupId) || other.meetupId == meetupId));
}


@override
int get hashCode => Object.hash(runtimeType,meetupId);

@override
String toString() {
  return 'MeetupEvent.acceptChanges(meetupId: $meetupId)';
}


}

/// @nodoc
abstract mixin class $AcceptChangesCopyWith<$Res> implements $MeetupEventCopyWith<$Res> {
  factory $AcceptChangesCopyWith(AcceptChanges value, $Res Function(AcceptChanges) _then) = _$AcceptChangesCopyWithImpl;
@override @useResult
$Res call({
 String meetupId
});




}
/// @nodoc
class _$AcceptChangesCopyWithImpl<$Res>
    implements $AcceptChangesCopyWith<$Res> {
  _$AcceptChangesCopyWithImpl(this._self, this._then);

  final AcceptChanges _self;
  final $Res Function(AcceptChanges) _then;

/// Create a copy of MeetupEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meetupId = null,}) {
  return _then(AcceptChanges(
null == meetupId ? _self.meetupId : meetupId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RejectChanges implements MeetupEvent {
  const RejectChanges(this.meetupId);
  

@override final  String meetupId;

/// Create a copy of MeetupEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RejectChangesCopyWith<RejectChanges> get copyWith => _$RejectChangesCopyWithImpl<RejectChanges>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RejectChanges&&(identical(other.meetupId, meetupId) || other.meetupId == meetupId));
}


@override
int get hashCode => Object.hash(runtimeType,meetupId);

@override
String toString() {
  return 'MeetupEvent.rejectChanges(meetupId: $meetupId)';
}


}

/// @nodoc
abstract mixin class $RejectChangesCopyWith<$Res> implements $MeetupEventCopyWith<$Res> {
  factory $RejectChangesCopyWith(RejectChanges value, $Res Function(RejectChanges) _then) = _$RejectChangesCopyWithImpl;
@override @useResult
$Res call({
 String meetupId
});




}
/// @nodoc
class _$RejectChangesCopyWithImpl<$Res>
    implements $RejectChangesCopyWith<$Res> {
  _$RejectChangesCopyWithImpl(this._self, this._then);

  final RejectChanges _self;
  final $Res Function(RejectChanges) _then;

/// Create a copy of MeetupEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meetupId = null,}) {
  return _then(RejectChanges(
null == meetupId ? _self.meetupId : meetupId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$MeetupState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeetupState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MeetupState()';
}


}

/// @nodoc
class $MeetupStateCopyWith<$Res>  {
$MeetupStateCopyWith(MeetupState _, $Res Function(MeetupState) __);
}


/// Adds pattern-matching-related methods to [MeetupState].
extension MeetupStatePatterns on MeetupState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MeetupStateInitial value)?  inital,TResult Function( MeetupStateLoading value)?  loading,TResult Function( MeetupStateError value)?  error,TResult Function( MeetupStateSuccess value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MeetupStateInitial() when inital != null:
return inital(_that);case MeetupStateLoading() when loading != null:
return loading(_that);case MeetupStateError() when error != null:
return error(_that);case MeetupStateSuccess() when success != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MeetupStateInitial value)  inital,required TResult Function( MeetupStateLoading value)  loading,required TResult Function( MeetupStateError value)  error,required TResult Function( MeetupStateSuccess value)  success,}){
final _that = this;
switch (_that) {
case MeetupStateInitial():
return inital(_that);case MeetupStateLoading():
return loading(_that);case MeetupStateError():
return error(_that);case MeetupStateSuccess():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MeetupStateInitial value)?  inital,TResult? Function( MeetupStateLoading value)?  loading,TResult? Function( MeetupStateError value)?  error,TResult? Function( MeetupStateSuccess value)?  success,}){
final _that = this;
switch (_that) {
case MeetupStateInitial() when inital != null:
return inital(_that);case MeetupStateLoading() when loading != null:
return loading(_that);case MeetupStateError() when error != null:
return error(_that);case MeetupStateSuccess() when success != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  inital,TResult Function( String meetupId)?  loading,TResult Function()?  error,TResult Function( String meetupId)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MeetupStateInitial() when inital != null:
return inital();case MeetupStateLoading() when loading != null:
return loading(_that.meetupId);case MeetupStateError() when error != null:
return error();case MeetupStateSuccess() when success != null:
return success(_that.meetupId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  inital,required TResult Function( String meetupId)  loading,required TResult Function()  error,required TResult Function( String meetupId)  success,}) {final _that = this;
switch (_that) {
case MeetupStateInitial():
return inital();case MeetupStateLoading():
return loading(_that.meetupId);case MeetupStateError():
return error();case MeetupStateSuccess():
return success(_that.meetupId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  inital,TResult? Function( String meetupId)?  loading,TResult? Function()?  error,TResult? Function( String meetupId)?  success,}) {final _that = this;
switch (_that) {
case MeetupStateInitial() when inital != null:
return inital();case MeetupStateLoading() when loading != null:
return loading(_that.meetupId);case MeetupStateError() when error != null:
return error();case MeetupStateSuccess() when success != null:
return success(_that.meetupId);case _:
  return null;

}
}

}

/// @nodoc


class MeetupStateInitial implements MeetupState {
  const MeetupStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeetupStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MeetupState.inital()';
}


}




/// @nodoc


class MeetupStateLoading implements MeetupState {
  const MeetupStateLoading({required this.meetupId});
  

 final  String meetupId;

/// Create a copy of MeetupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeetupStateLoadingCopyWith<MeetupStateLoading> get copyWith => _$MeetupStateLoadingCopyWithImpl<MeetupStateLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeetupStateLoading&&(identical(other.meetupId, meetupId) || other.meetupId == meetupId));
}


@override
int get hashCode => Object.hash(runtimeType,meetupId);

@override
String toString() {
  return 'MeetupState.loading(meetupId: $meetupId)';
}


}

/// @nodoc
abstract mixin class $MeetupStateLoadingCopyWith<$Res> implements $MeetupStateCopyWith<$Res> {
  factory $MeetupStateLoadingCopyWith(MeetupStateLoading value, $Res Function(MeetupStateLoading) _then) = _$MeetupStateLoadingCopyWithImpl;
@useResult
$Res call({
 String meetupId
});




}
/// @nodoc
class _$MeetupStateLoadingCopyWithImpl<$Res>
    implements $MeetupStateLoadingCopyWith<$Res> {
  _$MeetupStateLoadingCopyWithImpl(this._self, this._then);

  final MeetupStateLoading _self;
  final $Res Function(MeetupStateLoading) _then;

/// Create a copy of MeetupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? meetupId = null,}) {
  return _then(MeetupStateLoading(
meetupId: null == meetupId ? _self.meetupId : meetupId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class MeetupStateError implements MeetupState {
  const MeetupStateError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeetupStateError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MeetupState.error()';
}


}




/// @nodoc


class MeetupStateSuccess implements MeetupState {
  const MeetupStateSuccess({required this.meetupId});
  

 final  String meetupId;

/// Create a copy of MeetupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeetupStateSuccessCopyWith<MeetupStateSuccess> get copyWith => _$MeetupStateSuccessCopyWithImpl<MeetupStateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeetupStateSuccess&&(identical(other.meetupId, meetupId) || other.meetupId == meetupId));
}


@override
int get hashCode => Object.hash(runtimeType,meetupId);

@override
String toString() {
  return 'MeetupState.success(meetupId: $meetupId)';
}


}

/// @nodoc
abstract mixin class $MeetupStateSuccessCopyWith<$Res> implements $MeetupStateCopyWith<$Res> {
  factory $MeetupStateSuccessCopyWith(MeetupStateSuccess value, $Res Function(MeetupStateSuccess) _then) = _$MeetupStateSuccessCopyWithImpl;
@useResult
$Res call({
 String meetupId
});




}
/// @nodoc
class _$MeetupStateSuccessCopyWithImpl<$Res>
    implements $MeetupStateSuccessCopyWith<$Res> {
  _$MeetupStateSuccessCopyWithImpl(this._self, this._then);

  final MeetupStateSuccess _self;
  final $Res Function(MeetupStateSuccess) _then;

/// Create a copy of MeetupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? meetupId = null,}) {
  return _then(MeetupStateSuccess(
meetupId: null == meetupId ? _self.meetupId : meetupId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
