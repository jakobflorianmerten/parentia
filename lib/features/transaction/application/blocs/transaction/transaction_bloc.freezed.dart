// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionEvent {

 String get transactionId;
/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionEventCopyWith<TransactionEvent> get copyWith => _$TransactionEventCopyWithImpl<TransactionEvent>(this as TransactionEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionEvent&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId));
}


@override
int get hashCode => Object.hash(runtimeType,transactionId);

@override
String toString() {
  return 'TransactionEvent(transactionId: $transactionId)';
}


}

/// @nodoc
abstract mixin class $TransactionEventCopyWith<$Res>  {
  factory $TransactionEventCopyWith(TransactionEvent value, $Res Function(TransactionEvent) _then) = _$TransactionEventCopyWithImpl;
@useResult
$Res call({
 String transactionId
});




}
/// @nodoc
class _$TransactionEventCopyWithImpl<$Res>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._self, this._then);

  final TransactionEvent _self;
  final $Res Function(TransactionEvent) _then;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionEvent].
extension TransactionEventPatterns on TransactionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AcceptTransaction value)?  acceptTransaction,TResult Function( RejectTransaction value)?  rejectTransaction,TResult Function( PayTransaction value)?  payTransaction,TResult Function( AcceptPayment value)?  acceptPayment,TResult Function( RejectPayment value)?  rejectPayment,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AcceptTransaction() when acceptTransaction != null:
return acceptTransaction(_that);case RejectTransaction() when rejectTransaction != null:
return rejectTransaction(_that);case PayTransaction() when payTransaction != null:
return payTransaction(_that);case AcceptPayment() when acceptPayment != null:
return acceptPayment(_that);case RejectPayment() when rejectPayment != null:
return rejectPayment(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AcceptTransaction value)  acceptTransaction,required TResult Function( RejectTransaction value)  rejectTransaction,required TResult Function( PayTransaction value)  payTransaction,required TResult Function( AcceptPayment value)  acceptPayment,required TResult Function( RejectPayment value)  rejectPayment,}){
final _that = this;
switch (_that) {
case AcceptTransaction():
return acceptTransaction(_that);case RejectTransaction():
return rejectTransaction(_that);case PayTransaction():
return payTransaction(_that);case AcceptPayment():
return acceptPayment(_that);case RejectPayment():
return rejectPayment(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AcceptTransaction value)?  acceptTransaction,TResult? Function( RejectTransaction value)?  rejectTransaction,TResult? Function( PayTransaction value)?  payTransaction,TResult? Function( AcceptPayment value)?  acceptPayment,TResult? Function( RejectPayment value)?  rejectPayment,}){
final _that = this;
switch (_that) {
case AcceptTransaction() when acceptTransaction != null:
return acceptTransaction(_that);case RejectTransaction() when rejectTransaction != null:
return rejectTransaction(_that);case PayTransaction() when payTransaction != null:
return payTransaction(_that);case AcceptPayment() when acceptPayment != null:
return acceptPayment(_that);case RejectPayment() when rejectPayment != null:
return rejectPayment(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String transactionId)?  acceptTransaction,TResult Function( String transactionId)?  rejectTransaction,TResult Function( String transactionId)?  payTransaction,TResult Function( String transactionId)?  acceptPayment,TResult Function( String transactionId)?  rejectPayment,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AcceptTransaction() when acceptTransaction != null:
return acceptTransaction(_that.transactionId);case RejectTransaction() when rejectTransaction != null:
return rejectTransaction(_that.transactionId);case PayTransaction() when payTransaction != null:
return payTransaction(_that.transactionId);case AcceptPayment() when acceptPayment != null:
return acceptPayment(_that.transactionId);case RejectPayment() when rejectPayment != null:
return rejectPayment(_that.transactionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String transactionId)  acceptTransaction,required TResult Function( String transactionId)  rejectTransaction,required TResult Function( String transactionId)  payTransaction,required TResult Function( String transactionId)  acceptPayment,required TResult Function( String transactionId)  rejectPayment,}) {final _that = this;
switch (_that) {
case AcceptTransaction():
return acceptTransaction(_that.transactionId);case RejectTransaction():
return rejectTransaction(_that.transactionId);case PayTransaction():
return payTransaction(_that.transactionId);case AcceptPayment():
return acceptPayment(_that.transactionId);case RejectPayment():
return rejectPayment(_that.transactionId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String transactionId)?  acceptTransaction,TResult? Function( String transactionId)?  rejectTransaction,TResult? Function( String transactionId)?  payTransaction,TResult? Function( String transactionId)?  acceptPayment,TResult? Function( String transactionId)?  rejectPayment,}) {final _that = this;
switch (_that) {
case AcceptTransaction() when acceptTransaction != null:
return acceptTransaction(_that.transactionId);case RejectTransaction() when rejectTransaction != null:
return rejectTransaction(_that.transactionId);case PayTransaction() when payTransaction != null:
return payTransaction(_that.transactionId);case AcceptPayment() when acceptPayment != null:
return acceptPayment(_that.transactionId);case RejectPayment() when rejectPayment != null:
return rejectPayment(_that.transactionId);case _:
  return null;

}
}

}

/// @nodoc


class AcceptTransaction implements TransactionEvent {
  const AcceptTransaction(this.transactionId);
  

@override final  String transactionId;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcceptTransactionCopyWith<AcceptTransaction> get copyWith => _$AcceptTransactionCopyWithImpl<AcceptTransaction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcceptTransaction&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId));
}


@override
int get hashCode => Object.hash(runtimeType,transactionId);

@override
String toString() {
  return 'TransactionEvent.acceptTransaction(transactionId: $transactionId)';
}


}

/// @nodoc
abstract mixin class $AcceptTransactionCopyWith<$Res> implements $TransactionEventCopyWith<$Res> {
  factory $AcceptTransactionCopyWith(AcceptTransaction value, $Res Function(AcceptTransaction) _then) = _$AcceptTransactionCopyWithImpl;
@override @useResult
$Res call({
 String transactionId
});




}
/// @nodoc
class _$AcceptTransactionCopyWithImpl<$Res>
    implements $AcceptTransactionCopyWith<$Res> {
  _$AcceptTransactionCopyWithImpl(this._self, this._then);

  final AcceptTransaction _self;
  final $Res Function(AcceptTransaction) _then;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,}) {
  return _then(AcceptTransaction(
null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RejectTransaction implements TransactionEvent {
  const RejectTransaction(this.transactionId);
  

@override final  String transactionId;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RejectTransactionCopyWith<RejectTransaction> get copyWith => _$RejectTransactionCopyWithImpl<RejectTransaction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RejectTransaction&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId));
}


@override
int get hashCode => Object.hash(runtimeType,transactionId);

@override
String toString() {
  return 'TransactionEvent.rejectTransaction(transactionId: $transactionId)';
}


}

/// @nodoc
abstract mixin class $RejectTransactionCopyWith<$Res> implements $TransactionEventCopyWith<$Res> {
  factory $RejectTransactionCopyWith(RejectTransaction value, $Res Function(RejectTransaction) _then) = _$RejectTransactionCopyWithImpl;
@override @useResult
$Res call({
 String transactionId
});




}
/// @nodoc
class _$RejectTransactionCopyWithImpl<$Res>
    implements $RejectTransactionCopyWith<$Res> {
  _$RejectTransactionCopyWithImpl(this._self, this._then);

  final RejectTransaction _self;
  final $Res Function(RejectTransaction) _then;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,}) {
  return _then(RejectTransaction(
null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PayTransaction implements TransactionEvent {
  const PayTransaction(this.transactionId);
  

@override final  String transactionId;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayTransactionCopyWith<PayTransaction> get copyWith => _$PayTransactionCopyWithImpl<PayTransaction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PayTransaction&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId));
}


@override
int get hashCode => Object.hash(runtimeType,transactionId);

@override
String toString() {
  return 'TransactionEvent.payTransaction(transactionId: $transactionId)';
}


}

/// @nodoc
abstract mixin class $PayTransactionCopyWith<$Res> implements $TransactionEventCopyWith<$Res> {
  factory $PayTransactionCopyWith(PayTransaction value, $Res Function(PayTransaction) _then) = _$PayTransactionCopyWithImpl;
@override @useResult
$Res call({
 String transactionId
});




}
/// @nodoc
class _$PayTransactionCopyWithImpl<$Res>
    implements $PayTransactionCopyWith<$Res> {
  _$PayTransactionCopyWithImpl(this._self, this._then);

  final PayTransaction _self;
  final $Res Function(PayTransaction) _then;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,}) {
  return _then(PayTransaction(
null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AcceptPayment implements TransactionEvent {
  const AcceptPayment(this.transactionId);
  

@override final  String transactionId;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcceptPaymentCopyWith<AcceptPayment> get copyWith => _$AcceptPaymentCopyWithImpl<AcceptPayment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcceptPayment&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId));
}


@override
int get hashCode => Object.hash(runtimeType,transactionId);

@override
String toString() {
  return 'TransactionEvent.acceptPayment(transactionId: $transactionId)';
}


}

/// @nodoc
abstract mixin class $AcceptPaymentCopyWith<$Res> implements $TransactionEventCopyWith<$Res> {
  factory $AcceptPaymentCopyWith(AcceptPayment value, $Res Function(AcceptPayment) _then) = _$AcceptPaymentCopyWithImpl;
@override @useResult
$Res call({
 String transactionId
});




}
/// @nodoc
class _$AcceptPaymentCopyWithImpl<$Res>
    implements $AcceptPaymentCopyWith<$Res> {
  _$AcceptPaymentCopyWithImpl(this._self, this._then);

  final AcceptPayment _self;
  final $Res Function(AcceptPayment) _then;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,}) {
  return _then(AcceptPayment(
null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RejectPayment implements TransactionEvent {
  const RejectPayment(this.transactionId);
  

@override final  String transactionId;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RejectPaymentCopyWith<RejectPayment> get copyWith => _$RejectPaymentCopyWithImpl<RejectPayment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RejectPayment&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId));
}


@override
int get hashCode => Object.hash(runtimeType,transactionId);

@override
String toString() {
  return 'TransactionEvent.rejectPayment(transactionId: $transactionId)';
}


}

/// @nodoc
abstract mixin class $RejectPaymentCopyWith<$Res> implements $TransactionEventCopyWith<$Res> {
  factory $RejectPaymentCopyWith(RejectPayment value, $Res Function(RejectPayment) _then) = _$RejectPaymentCopyWithImpl;
@override @useResult
$Res call({
 String transactionId
});




}
/// @nodoc
class _$RejectPaymentCopyWithImpl<$Res>
    implements $RejectPaymentCopyWith<$Res> {
  _$RejectPaymentCopyWithImpl(this._self, this._then);

  final RejectPayment _self;
  final $Res Function(RejectPayment) _then;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,}) {
  return _then(RejectPayment(
null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TransactionState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionState()';
}


}

/// @nodoc
class $TransactionStateCopyWith<$Res>  {
$TransactionStateCopyWith(TransactionState _, $Res Function(TransactionState) __);
}


/// Adds pattern-matching-related methods to [TransactionState].
extension TransactionStatePatterns on TransactionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TransactionStateInitial value)?  inital,TResult Function( TransactionStateLoading value)?  loading,TResult Function( TransactionStateError value)?  error,TResult Function( TransactionStateSuccess value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TransactionStateInitial() when inital != null:
return inital(_that);case TransactionStateLoading() when loading != null:
return loading(_that);case TransactionStateError() when error != null:
return error(_that);case TransactionStateSuccess() when success != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TransactionStateInitial value)  inital,required TResult Function( TransactionStateLoading value)  loading,required TResult Function( TransactionStateError value)  error,required TResult Function( TransactionStateSuccess value)  success,}){
final _that = this;
switch (_that) {
case TransactionStateInitial():
return inital(_that);case TransactionStateLoading():
return loading(_that);case TransactionStateError():
return error(_that);case TransactionStateSuccess():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TransactionStateInitial value)?  inital,TResult? Function( TransactionStateLoading value)?  loading,TResult? Function( TransactionStateError value)?  error,TResult? Function( TransactionStateSuccess value)?  success,}){
final _that = this;
switch (_that) {
case TransactionStateInitial() when inital != null:
return inital(_that);case TransactionStateLoading() when loading != null:
return loading(_that);case TransactionStateError() when error != null:
return error(_that);case TransactionStateSuccess() when success != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  inital,TResult Function( String transactionId)?  loading,TResult Function( String errorMessage)?  error,TResult Function( String transactionId)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TransactionStateInitial() when inital != null:
return inital();case TransactionStateLoading() when loading != null:
return loading(_that.transactionId);case TransactionStateError() when error != null:
return error(_that.errorMessage);case TransactionStateSuccess() when success != null:
return success(_that.transactionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  inital,required TResult Function( String transactionId)  loading,required TResult Function( String errorMessage)  error,required TResult Function( String transactionId)  success,}) {final _that = this;
switch (_that) {
case TransactionStateInitial():
return inital();case TransactionStateLoading():
return loading(_that.transactionId);case TransactionStateError():
return error(_that.errorMessage);case TransactionStateSuccess():
return success(_that.transactionId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  inital,TResult? Function( String transactionId)?  loading,TResult? Function( String errorMessage)?  error,TResult? Function( String transactionId)?  success,}) {final _that = this;
switch (_that) {
case TransactionStateInitial() when inital != null:
return inital();case TransactionStateLoading() when loading != null:
return loading(_that.transactionId);case TransactionStateError() when error != null:
return error(_that.errorMessage);case TransactionStateSuccess() when success != null:
return success(_that.transactionId);case _:
  return null;

}
}

}

/// @nodoc


class TransactionStateInitial implements TransactionState {
  const TransactionStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionState.inital()';
}


}




/// @nodoc


class TransactionStateLoading implements TransactionState {
  const TransactionStateLoading({required this.transactionId});
  

 final  String transactionId;

/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionStateLoadingCopyWith<TransactionStateLoading> get copyWith => _$TransactionStateLoadingCopyWithImpl<TransactionStateLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionStateLoading&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId));
}


@override
int get hashCode => Object.hash(runtimeType,transactionId);

@override
String toString() {
  return 'TransactionState.loading(transactionId: $transactionId)';
}


}

/// @nodoc
abstract mixin class $TransactionStateLoadingCopyWith<$Res> implements $TransactionStateCopyWith<$Res> {
  factory $TransactionStateLoadingCopyWith(TransactionStateLoading value, $Res Function(TransactionStateLoading) _then) = _$TransactionStateLoadingCopyWithImpl;
@useResult
$Res call({
 String transactionId
});




}
/// @nodoc
class _$TransactionStateLoadingCopyWithImpl<$Res>
    implements $TransactionStateLoadingCopyWith<$Res> {
  _$TransactionStateLoadingCopyWithImpl(this._self, this._then);

  final TransactionStateLoading _self;
  final $Res Function(TransactionStateLoading) _then;

/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? transactionId = null,}) {
  return _then(TransactionStateLoading(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TransactionStateError implements TransactionState {
  const TransactionStateError({required this.errorMessage});
  

 final  String errorMessage;

/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionStateErrorCopyWith<TransactionStateError> get copyWith => _$TransactionStateErrorCopyWithImpl<TransactionStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionStateError&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'TransactionState.error(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $TransactionStateErrorCopyWith<$Res> implements $TransactionStateCopyWith<$Res> {
  factory $TransactionStateErrorCopyWith(TransactionStateError value, $Res Function(TransactionStateError) _then) = _$TransactionStateErrorCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$TransactionStateErrorCopyWithImpl<$Res>
    implements $TransactionStateErrorCopyWith<$Res> {
  _$TransactionStateErrorCopyWithImpl(this._self, this._then);

  final TransactionStateError _self;
  final $Res Function(TransactionStateError) _then;

/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(TransactionStateError(
errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TransactionStateSuccess implements TransactionState {
  const TransactionStateSuccess({required this.transactionId});
  

 final  String transactionId;

/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionStateSuccessCopyWith<TransactionStateSuccess> get copyWith => _$TransactionStateSuccessCopyWithImpl<TransactionStateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionStateSuccess&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId));
}


@override
int get hashCode => Object.hash(runtimeType,transactionId);

@override
String toString() {
  return 'TransactionState.success(transactionId: $transactionId)';
}


}

/// @nodoc
abstract mixin class $TransactionStateSuccessCopyWith<$Res> implements $TransactionStateCopyWith<$Res> {
  factory $TransactionStateSuccessCopyWith(TransactionStateSuccess value, $Res Function(TransactionStateSuccess) _then) = _$TransactionStateSuccessCopyWithImpl;
@useResult
$Res call({
 String transactionId
});




}
/// @nodoc
class _$TransactionStateSuccessCopyWithImpl<$Res>
    implements $TransactionStateSuccessCopyWith<$Res> {
  _$TransactionStateSuccessCopyWithImpl(this._self, this._then);

  final TransactionStateSuccess _self;
  final $Res Function(TransactionStateSuccess) _then;

/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? transactionId = null,}) {
  return _then(TransactionStateSuccess(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
