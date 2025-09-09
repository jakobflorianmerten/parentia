// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NewTransactionEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewTransactionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewTransactionEvent()';
}


}

/// @nodoc
class $NewTransactionEventCopyWith<$Res>  {
$NewTransactionEventCopyWith(NewTransactionEvent _, $Res Function(NewTransactionEvent) __);
}


/// Adds pattern-matching-related methods to [NewTransactionEvent].
extension NewTransactionEventPatterns on NewTransactionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SelectedTransactionPartner value)?  selectedTransactionPartner,TResult Function( SelectedTransactionPrice value)?  selectedTransactionPrice,TResult Function( SelectedPaymentDate value)?  selectedPaymentDate,TResult Function( SubmitTransaction value)?  submitTransaction,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SelectedTransactionPartner() when selectedTransactionPartner != null:
return selectedTransactionPartner(_that);case SelectedTransactionPrice() when selectedTransactionPrice != null:
return selectedTransactionPrice(_that);case SelectedPaymentDate() when selectedPaymentDate != null:
return selectedPaymentDate(_that);case SubmitTransaction() when submitTransaction != null:
return submitTransaction(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SelectedTransactionPartner value)  selectedTransactionPartner,required TResult Function( SelectedTransactionPrice value)  selectedTransactionPrice,required TResult Function( SelectedPaymentDate value)  selectedPaymentDate,required TResult Function( SubmitTransaction value)  submitTransaction,}){
final _that = this;
switch (_that) {
case SelectedTransactionPartner():
return selectedTransactionPartner(_that);case SelectedTransactionPrice():
return selectedTransactionPrice(_that);case SelectedPaymentDate():
return selectedPaymentDate(_that);case SubmitTransaction():
return submitTransaction(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SelectedTransactionPartner value)?  selectedTransactionPartner,TResult? Function( SelectedTransactionPrice value)?  selectedTransactionPrice,TResult? Function( SelectedPaymentDate value)?  selectedPaymentDate,TResult? Function( SubmitTransaction value)?  submitTransaction,}){
final _that = this;
switch (_that) {
case SelectedTransactionPartner() when selectedTransactionPartner != null:
return selectedTransactionPartner(_that);case SelectedTransactionPrice() when selectedTransactionPrice != null:
return selectedTransactionPrice(_that);case SelectedPaymentDate() when selectedPaymentDate != null:
return selectedPaymentDate(_that);case SubmitTransaction() when submitTransaction != null:
return submitTransaction(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( User user)?  selectedTransactionPartner,TResult Function( double amount)?  selectedTransactionPrice,TResult Function( DateTime date)?  selectedPaymentDate,TResult Function()?  submitTransaction,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SelectedTransactionPartner() when selectedTransactionPartner != null:
return selectedTransactionPartner(_that.user);case SelectedTransactionPrice() when selectedTransactionPrice != null:
return selectedTransactionPrice(_that.amount);case SelectedPaymentDate() when selectedPaymentDate != null:
return selectedPaymentDate(_that.date);case SubmitTransaction() when submitTransaction != null:
return submitTransaction();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( User user)  selectedTransactionPartner,required TResult Function( double amount)  selectedTransactionPrice,required TResult Function( DateTime date)  selectedPaymentDate,required TResult Function()  submitTransaction,}) {final _that = this;
switch (_that) {
case SelectedTransactionPartner():
return selectedTransactionPartner(_that.user);case SelectedTransactionPrice():
return selectedTransactionPrice(_that.amount);case SelectedPaymentDate():
return selectedPaymentDate(_that.date);case SubmitTransaction():
return submitTransaction();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( User user)?  selectedTransactionPartner,TResult? Function( double amount)?  selectedTransactionPrice,TResult? Function( DateTime date)?  selectedPaymentDate,TResult? Function()?  submitTransaction,}) {final _that = this;
switch (_that) {
case SelectedTransactionPartner() when selectedTransactionPartner != null:
return selectedTransactionPartner(_that.user);case SelectedTransactionPrice() when selectedTransactionPrice != null:
return selectedTransactionPrice(_that.amount);case SelectedPaymentDate() when selectedPaymentDate != null:
return selectedPaymentDate(_that.date);case SubmitTransaction() when submitTransaction != null:
return submitTransaction();case _:
  return null;

}
}

}

/// @nodoc


class SelectedTransactionPartner implements NewTransactionEvent {
  const SelectedTransactionPartner(this.user);
  

 final  User user;

/// Create a copy of NewTransactionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectedTransactionPartnerCopyWith<SelectedTransactionPartner> get copyWith => _$SelectedTransactionPartnerCopyWithImpl<SelectedTransactionPartner>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectedTransactionPartner&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'NewTransactionEvent.selectedTransactionPartner(user: $user)';
}


}

/// @nodoc
abstract mixin class $SelectedTransactionPartnerCopyWith<$Res> implements $NewTransactionEventCopyWith<$Res> {
  factory $SelectedTransactionPartnerCopyWith(SelectedTransactionPartner value, $Res Function(SelectedTransactionPartner) _then) = _$SelectedTransactionPartnerCopyWithImpl;
@useResult
$Res call({
 User user
});




}
/// @nodoc
class _$SelectedTransactionPartnerCopyWithImpl<$Res>
    implements $SelectedTransactionPartnerCopyWith<$Res> {
  _$SelectedTransactionPartnerCopyWithImpl(this._self, this._then);

  final SelectedTransactionPartner _self;
  final $Res Function(SelectedTransactionPartner) _then;

/// Create a copy of NewTransactionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(SelectedTransactionPartner(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}


}

/// @nodoc


class SelectedTransactionPrice implements NewTransactionEvent {
  const SelectedTransactionPrice(this.amount);
  

 final  double amount;

/// Create a copy of NewTransactionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectedTransactionPriceCopyWith<SelectedTransactionPrice> get copyWith => _$SelectedTransactionPriceCopyWithImpl<SelectedTransactionPrice>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectedTransactionPrice&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,amount);

@override
String toString() {
  return 'NewTransactionEvent.selectedTransactionPrice(amount: $amount)';
}


}

/// @nodoc
abstract mixin class $SelectedTransactionPriceCopyWith<$Res> implements $NewTransactionEventCopyWith<$Res> {
  factory $SelectedTransactionPriceCopyWith(SelectedTransactionPrice value, $Res Function(SelectedTransactionPrice) _then) = _$SelectedTransactionPriceCopyWithImpl;
@useResult
$Res call({
 double amount
});




}
/// @nodoc
class _$SelectedTransactionPriceCopyWithImpl<$Res>
    implements $SelectedTransactionPriceCopyWith<$Res> {
  _$SelectedTransactionPriceCopyWithImpl(this._self, this._then);

  final SelectedTransactionPrice _self;
  final $Res Function(SelectedTransactionPrice) _then;

/// Create a copy of NewTransactionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? amount = null,}) {
  return _then(SelectedTransactionPrice(
null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class SelectedPaymentDate implements NewTransactionEvent {
  const SelectedPaymentDate(this.date);
  

 final  DateTime date;

/// Create a copy of NewTransactionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectedPaymentDateCopyWith<SelectedPaymentDate> get copyWith => _$SelectedPaymentDateCopyWithImpl<SelectedPaymentDate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectedPaymentDate&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'NewTransactionEvent.selectedPaymentDate(date: $date)';
}


}

/// @nodoc
abstract mixin class $SelectedPaymentDateCopyWith<$Res> implements $NewTransactionEventCopyWith<$Res> {
  factory $SelectedPaymentDateCopyWith(SelectedPaymentDate value, $Res Function(SelectedPaymentDate) _then) = _$SelectedPaymentDateCopyWithImpl;
@useResult
$Res call({
 DateTime date
});




}
/// @nodoc
class _$SelectedPaymentDateCopyWithImpl<$Res>
    implements $SelectedPaymentDateCopyWith<$Res> {
  _$SelectedPaymentDateCopyWithImpl(this._self, this._then);

  final SelectedPaymentDate _self;
  final $Res Function(SelectedPaymentDate) _then;

/// Create a copy of NewTransactionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? date = null,}) {
  return _then(SelectedPaymentDate(
null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class SubmitTransaction implements NewTransactionEvent {
  const SubmitTransaction();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitTransaction);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewTransactionEvent.submitTransaction()';
}


}




/// @nodoc
mixin _$NewTransactionState {

 bool get isSubmitting; Option<User> get selectedUser; Money get amount; DateTime get paymentDate; Option<Either<TransactionFailure, Unit>> get failureOrSuccess;
/// Create a copy of NewTransactionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewTransactionStateCopyWith<NewTransactionState> get copyWith => _$NewTransactionStateCopyWithImpl<NewTransactionState>(this as NewTransactionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewTransactionState&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.selectedUser, selectedUser) || other.selectedUser == selectedUser)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentDate, paymentDate) || other.paymentDate == paymentDate)&&(identical(other.failureOrSuccess, failureOrSuccess) || other.failureOrSuccess == failureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isSubmitting,selectedUser,amount,paymentDate,failureOrSuccess);

@override
String toString() {
  return 'NewTransactionState(isSubmitting: $isSubmitting, selectedUser: $selectedUser, amount: $amount, paymentDate: $paymentDate, failureOrSuccess: $failureOrSuccess)';
}


}

/// @nodoc
abstract mixin class $NewTransactionStateCopyWith<$Res>  {
  factory $NewTransactionStateCopyWith(NewTransactionState value, $Res Function(NewTransactionState) _then) = _$NewTransactionStateCopyWithImpl;
@useResult
$Res call({
 bool isSubmitting, Option<User> selectedUser, Money amount, DateTime paymentDate, Option<Either<TransactionFailure, Unit>> failureOrSuccess
});




}
/// @nodoc
class _$NewTransactionStateCopyWithImpl<$Res>
    implements $NewTransactionStateCopyWith<$Res> {
  _$NewTransactionStateCopyWithImpl(this._self, this._then);

  final NewTransactionState _self;
  final $Res Function(NewTransactionState) _then;

/// Create a copy of NewTransactionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSubmitting = null,Object? selectedUser = null,Object? amount = null,Object? paymentDate = null,Object? failureOrSuccess = null,}) {
  return _then(_self.copyWith(
isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,selectedUser: null == selectedUser ? _self.selectedUser : selectedUser // ignore: cast_nullable_to_non_nullable
as Option<User>,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Money,paymentDate: null == paymentDate ? _self.paymentDate : paymentDate // ignore: cast_nullable_to_non_nullable
as DateTime,failureOrSuccess: null == failureOrSuccess ? _self.failureOrSuccess : failureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<TransactionFailure, Unit>>,
  ));
}

}


/// Adds pattern-matching-related methods to [NewTransactionState].
extension NewTransactionStatePatterns on NewTransactionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NewTransactionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NewTransactionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NewTransactionState value)  $default,){
final _that = this;
switch (_that) {
case _NewTransactionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NewTransactionState value)?  $default,){
final _that = this;
switch (_that) {
case _NewTransactionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isSubmitting,  Option<User> selectedUser,  Money amount,  DateTime paymentDate,  Option<Either<TransactionFailure, Unit>> failureOrSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NewTransactionState() when $default != null:
return $default(_that.isSubmitting,_that.selectedUser,_that.amount,_that.paymentDate,_that.failureOrSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isSubmitting,  Option<User> selectedUser,  Money amount,  DateTime paymentDate,  Option<Either<TransactionFailure, Unit>> failureOrSuccess)  $default,) {final _that = this;
switch (_that) {
case _NewTransactionState():
return $default(_that.isSubmitting,_that.selectedUser,_that.amount,_that.paymentDate,_that.failureOrSuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isSubmitting,  Option<User> selectedUser,  Money amount,  DateTime paymentDate,  Option<Either<TransactionFailure, Unit>> failureOrSuccess)?  $default,) {final _that = this;
switch (_that) {
case _NewTransactionState() when $default != null:
return $default(_that.isSubmitting,_that.selectedUser,_that.amount,_that.paymentDate,_that.failureOrSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _NewTransactionState implements NewTransactionState {
  const _NewTransactionState({required this.isSubmitting, required this.selectedUser, required this.amount, required this.paymentDate, required this.failureOrSuccess});
  

@override final  bool isSubmitting;
@override final  Option<User> selectedUser;
@override final  Money amount;
@override final  DateTime paymentDate;
@override final  Option<Either<TransactionFailure, Unit>> failureOrSuccess;

/// Create a copy of NewTransactionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewTransactionStateCopyWith<_NewTransactionState> get copyWith => __$NewTransactionStateCopyWithImpl<_NewTransactionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewTransactionState&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.selectedUser, selectedUser) || other.selectedUser == selectedUser)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentDate, paymentDate) || other.paymentDate == paymentDate)&&(identical(other.failureOrSuccess, failureOrSuccess) || other.failureOrSuccess == failureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isSubmitting,selectedUser,amount,paymentDate,failureOrSuccess);

@override
String toString() {
  return 'NewTransactionState(isSubmitting: $isSubmitting, selectedUser: $selectedUser, amount: $amount, paymentDate: $paymentDate, failureOrSuccess: $failureOrSuccess)';
}


}

/// @nodoc
abstract mixin class _$NewTransactionStateCopyWith<$Res> implements $NewTransactionStateCopyWith<$Res> {
  factory _$NewTransactionStateCopyWith(_NewTransactionState value, $Res Function(_NewTransactionState) _then) = __$NewTransactionStateCopyWithImpl;
@override @useResult
$Res call({
 bool isSubmitting, Option<User> selectedUser, Money amount, DateTime paymentDate, Option<Either<TransactionFailure, Unit>> failureOrSuccess
});




}
/// @nodoc
class __$NewTransactionStateCopyWithImpl<$Res>
    implements _$NewTransactionStateCopyWith<$Res> {
  __$NewTransactionStateCopyWithImpl(this._self, this._then);

  final _NewTransactionState _self;
  final $Res Function(_NewTransactionState) _then;

/// Create a copy of NewTransactionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSubmitting = null,Object? selectedUser = null,Object? amount = null,Object? paymentDate = null,Object? failureOrSuccess = null,}) {
  return _then(_NewTransactionState(
isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,selectedUser: null == selectedUser ? _self.selectedUser : selectedUser // ignore: cast_nullable_to_non_nullable
as Option<User>,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Money,paymentDate: null == paymentDate ? _self.paymentDate : paymentDate // ignore: cast_nullable_to_non_nullable
as DateTime,failureOrSuccess: null == failureOrSuccess ? _self.failureOrSuccess : failureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<TransactionFailure, Unit>>,
  ));
}


}

// dart format on
