// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionHistoryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionHistoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionHistoryEvent()';
}


}

/// @nodoc
class $TransactionHistoryEventCopyWith<$Res>  {
$TransactionHistoryEventCopyWith(TransactionHistoryEvent _, $Res Function(TransactionHistoryEvent) __);
}


/// Adds pattern-matching-related methods to [TransactionHistoryEvent].
extension TransactionHistoryEventPatterns on TransactionHistoryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TransactionHistoryEventLoad value)?  load,TResult Function( TransactionHistoryEventUpdated value)?  updated,TResult Function( TransactionHistoryEventDeleteTransaction value)?  deleteTransaction,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TransactionHistoryEventLoad() when load != null:
return load(_that);case TransactionHistoryEventUpdated() when updated != null:
return updated(_that);case TransactionHistoryEventDeleteTransaction() when deleteTransaction != null:
return deleteTransaction(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TransactionHistoryEventLoad value)  load,required TResult Function( TransactionHistoryEventUpdated value)  updated,required TResult Function( TransactionHistoryEventDeleteTransaction value)  deleteTransaction,}){
final _that = this;
switch (_that) {
case TransactionHistoryEventLoad():
return load(_that);case TransactionHistoryEventUpdated():
return updated(_that);case TransactionHistoryEventDeleteTransaction():
return deleteTransaction(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TransactionHistoryEventLoad value)?  load,TResult? Function( TransactionHistoryEventUpdated value)?  updated,TResult? Function( TransactionHistoryEventDeleteTransaction value)?  deleteTransaction,}){
final _that = this;
switch (_that) {
case TransactionHistoryEventLoad() when load != null:
return load(_that);case TransactionHistoryEventUpdated() when updated != null:
return updated(_that);case TransactionHistoryEventDeleteTransaction() when deleteTransaction != null:
return deleteTransaction(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  load,TResult Function( List<Transaction> transactions)?  updated,TResult Function( String transactionId)?  deleteTransaction,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TransactionHistoryEventLoad() when load != null:
return load();case TransactionHistoryEventUpdated() when updated != null:
return updated(_that.transactions);case TransactionHistoryEventDeleteTransaction() when deleteTransaction != null:
return deleteTransaction(_that.transactionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  load,required TResult Function( List<Transaction> transactions)  updated,required TResult Function( String transactionId)  deleteTransaction,}) {final _that = this;
switch (_that) {
case TransactionHistoryEventLoad():
return load();case TransactionHistoryEventUpdated():
return updated(_that.transactions);case TransactionHistoryEventDeleteTransaction():
return deleteTransaction(_that.transactionId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  load,TResult? Function( List<Transaction> transactions)?  updated,TResult? Function( String transactionId)?  deleteTransaction,}) {final _that = this;
switch (_that) {
case TransactionHistoryEventLoad() when load != null:
return load();case TransactionHistoryEventUpdated() when updated != null:
return updated(_that.transactions);case TransactionHistoryEventDeleteTransaction() when deleteTransaction != null:
return deleteTransaction(_that.transactionId);case _:
  return null;

}
}

}

/// @nodoc


class TransactionHistoryEventLoad implements TransactionHistoryEvent {
  const TransactionHistoryEventLoad();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionHistoryEventLoad);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionHistoryEvent.load()';
}


}




/// @nodoc


class TransactionHistoryEventUpdated implements TransactionHistoryEvent {
  const TransactionHistoryEventUpdated(final  List<Transaction> transactions): _transactions = transactions;
  

 final  List<Transaction> _transactions;
 List<Transaction> get transactions {
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactions);
}


/// Create a copy of TransactionHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionHistoryEventUpdatedCopyWith<TransactionHistoryEventUpdated> get copyWith => _$TransactionHistoryEventUpdatedCopyWithImpl<TransactionHistoryEventUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionHistoryEventUpdated&&const DeepCollectionEquality().equals(other._transactions, _transactions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_transactions));

@override
String toString() {
  return 'TransactionHistoryEvent.updated(transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class $TransactionHistoryEventUpdatedCopyWith<$Res> implements $TransactionHistoryEventCopyWith<$Res> {
  factory $TransactionHistoryEventUpdatedCopyWith(TransactionHistoryEventUpdated value, $Res Function(TransactionHistoryEventUpdated) _then) = _$TransactionHistoryEventUpdatedCopyWithImpl;
@useResult
$Res call({
 List<Transaction> transactions
});




}
/// @nodoc
class _$TransactionHistoryEventUpdatedCopyWithImpl<$Res>
    implements $TransactionHistoryEventUpdatedCopyWith<$Res> {
  _$TransactionHistoryEventUpdatedCopyWithImpl(this._self, this._then);

  final TransactionHistoryEventUpdated _self;
  final $Res Function(TransactionHistoryEventUpdated) _then;

/// Create a copy of TransactionHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? transactions = null,}) {
  return _then(TransactionHistoryEventUpdated(
null == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>,
  ));
}


}

/// @nodoc


class TransactionHistoryEventDeleteTransaction implements TransactionHistoryEvent {
  const TransactionHistoryEventDeleteTransaction(this.transactionId);
  

 final  String transactionId;

/// Create a copy of TransactionHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionHistoryEventDeleteTransactionCopyWith<TransactionHistoryEventDeleteTransaction> get copyWith => _$TransactionHistoryEventDeleteTransactionCopyWithImpl<TransactionHistoryEventDeleteTransaction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionHistoryEventDeleteTransaction&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId));
}


@override
int get hashCode => Object.hash(runtimeType,transactionId);

@override
String toString() {
  return 'TransactionHistoryEvent.deleteTransaction(transactionId: $transactionId)';
}


}

/// @nodoc
abstract mixin class $TransactionHistoryEventDeleteTransactionCopyWith<$Res> implements $TransactionHistoryEventCopyWith<$Res> {
  factory $TransactionHistoryEventDeleteTransactionCopyWith(TransactionHistoryEventDeleteTransaction value, $Res Function(TransactionHistoryEventDeleteTransaction) _then) = _$TransactionHistoryEventDeleteTransactionCopyWithImpl;
@useResult
$Res call({
 String transactionId
});




}
/// @nodoc
class _$TransactionHistoryEventDeleteTransactionCopyWithImpl<$Res>
    implements $TransactionHistoryEventDeleteTransactionCopyWith<$Res> {
  _$TransactionHistoryEventDeleteTransactionCopyWithImpl(this._self, this._then);

  final TransactionHistoryEventDeleteTransaction _self;
  final $Res Function(TransactionHistoryEventDeleteTransaction) _then;

/// Create a copy of TransactionHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? transactionId = null,}) {
  return _then(TransactionHistoryEventDeleteTransaction(
null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TransactionHistoryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionHistoryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionHistoryState()';
}


}

/// @nodoc
class $TransactionHistoryStateCopyWith<$Res>  {
$TransactionHistoryStateCopyWith(TransactionHistoryState _, $Res Function(TransactionHistoryState) __);
}


/// Adds pattern-matching-related methods to [TransactionHistoryState].
extension TransactionHistoryStatePatterns on TransactionHistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TransactionHistoryStateInital value)?  inital,TResult Function( TransactionHistoryStateLoading value)?  loading,TResult Function( TransactionHistoryStateSuccess value)?  success,TResult Function( TransactionHistoryStateError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TransactionHistoryStateInital() when inital != null:
return inital(_that);case TransactionHistoryStateLoading() when loading != null:
return loading(_that);case TransactionHistoryStateSuccess() when success != null:
return success(_that);case TransactionHistoryStateError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TransactionHistoryStateInital value)  inital,required TResult Function( TransactionHistoryStateLoading value)  loading,required TResult Function( TransactionHistoryStateSuccess value)  success,required TResult Function( TransactionHistoryStateError value)  error,}){
final _that = this;
switch (_that) {
case TransactionHistoryStateInital():
return inital(_that);case TransactionHistoryStateLoading():
return loading(_that);case TransactionHistoryStateSuccess():
return success(_that);case TransactionHistoryStateError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TransactionHistoryStateInital value)?  inital,TResult? Function( TransactionHistoryStateLoading value)?  loading,TResult? Function( TransactionHistoryStateSuccess value)?  success,TResult? Function( TransactionHistoryStateError value)?  error,}){
final _that = this;
switch (_that) {
case TransactionHistoryStateInital() when inital != null:
return inital(_that);case TransactionHistoryStateLoading() when loading != null:
return loading(_that);case TransactionHistoryStateSuccess() when success != null:
return success(_that);case TransactionHistoryStateError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  inital,TResult Function()?  loading,TResult Function( List<Transaction> transactions)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TransactionHistoryStateInital() when inital != null:
return inital();case TransactionHistoryStateLoading() when loading != null:
return loading();case TransactionHistoryStateSuccess() when success != null:
return success(_that.transactions);case TransactionHistoryStateError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  inital,required TResult Function()  loading,required TResult Function( List<Transaction> transactions)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case TransactionHistoryStateInital():
return inital();case TransactionHistoryStateLoading():
return loading();case TransactionHistoryStateSuccess():
return success(_that.transactions);case TransactionHistoryStateError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  inital,TResult? Function()?  loading,TResult? Function( List<Transaction> transactions)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case TransactionHistoryStateInital() when inital != null:
return inital();case TransactionHistoryStateLoading() when loading != null:
return loading();case TransactionHistoryStateSuccess() when success != null:
return success(_that.transactions);case TransactionHistoryStateError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class TransactionHistoryStateInital implements TransactionHistoryState {
  const TransactionHistoryStateInital();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionHistoryStateInital);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionHistoryState.inital()';
}


}




/// @nodoc


class TransactionHistoryStateLoading implements TransactionHistoryState {
  const TransactionHistoryStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionHistoryStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionHistoryState.loading()';
}


}




/// @nodoc


class TransactionHistoryStateSuccess implements TransactionHistoryState {
  const TransactionHistoryStateSuccess(final  List<Transaction> transactions): _transactions = transactions;
  

 final  List<Transaction> _transactions;
 List<Transaction> get transactions {
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactions);
}


/// Create a copy of TransactionHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionHistoryStateSuccessCopyWith<TransactionHistoryStateSuccess> get copyWith => _$TransactionHistoryStateSuccessCopyWithImpl<TransactionHistoryStateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionHistoryStateSuccess&&const DeepCollectionEquality().equals(other._transactions, _transactions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_transactions));

@override
String toString() {
  return 'TransactionHistoryState.success(transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class $TransactionHistoryStateSuccessCopyWith<$Res> implements $TransactionHistoryStateCopyWith<$Res> {
  factory $TransactionHistoryStateSuccessCopyWith(TransactionHistoryStateSuccess value, $Res Function(TransactionHistoryStateSuccess) _then) = _$TransactionHistoryStateSuccessCopyWithImpl;
@useResult
$Res call({
 List<Transaction> transactions
});




}
/// @nodoc
class _$TransactionHistoryStateSuccessCopyWithImpl<$Res>
    implements $TransactionHistoryStateSuccessCopyWith<$Res> {
  _$TransactionHistoryStateSuccessCopyWithImpl(this._self, this._then);

  final TransactionHistoryStateSuccess _self;
  final $Res Function(TransactionHistoryStateSuccess) _then;

/// Create a copy of TransactionHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? transactions = null,}) {
  return _then(TransactionHistoryStateSuccess(
null == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>,
  ));
}


}

/// @nodoc


class TransactionHistoryStateError implements TransactionHistoryState {
  const TransactionHistoryStateError(this.message);
  

 final  String message;

/// Create a copy of TransactionHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionHistoryStateErrorCopyWith<TransactionHistoryStateError> get copyWith => _$TransactionHistoryStateErrorCopyWithImpl<TransactionHistoryStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionHistoryStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TransactionHistoryState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $TransactionHistoryStateErrorCopyWith<$Res> implements $TransactionHistoryStateCopyWith<$Res> {
  factory $TransactionHistoryStateErrorCopyWith(TransactionHistoryStateError value, $Res Function(TransactionHistoryStateError) _then) = _$TransactionHistoryStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$TransactionHistoryStateErrorCopyWithImpl<$Res>
    implements $TransactionHistoryStateErrorCopyWith<$Res> {
  _$TransactionHistoryStateErrorCopyWithImpl(this._self, this._then);

  final TransactionHistoryStateError _self;
  final $Res Function(TransactionHistoryStateError) _then;

/// Create a copy of TransactionHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(TransactionHistoryStateError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
