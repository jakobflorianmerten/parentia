// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'load_transactions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoadTransactionsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadTransactionsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadTransactionsEvent()';
}


}

/// @nodoc
class $LoadTransactionsEventCopyWith<$Res>  {
$LoadTransactionsEventCopyWith(LoadTransactionsEvent _, $Res Function(LoadTransactionsEvent) __);
}


/// Adds pattern-matching-related methods to [LoadTransactionsEvent].
extension LoadTransactionsEventPatterns on LoadTransactionsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadTransactions value)?  loadTransactions,TResult Function( UpdateTransactions value)?  updateTransactions,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadTransactions() when loadTransactions != null:
return loadTransactions(_that);case UpdateTransactions() when updateTransactions != null:
return updateTransactions(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadTransactions value)  loadTransactions,required TResult Function( UpdateTransactions value)  updateTransactions,}){
final _that = this;
switch (_that) {
case LoadTransactions():
return loadTransactions(_that);case UpdateTransactions():
return updateTransactions(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadTransactions value)?  loadTransactions,TResult? Function( UpdateTransactions value)?  updateTransactions,}){
final _that = this;
switch (_that) {
case LoadTransactions() when loadTransactions != null:
return loadTransactions(_that);case UpdateTransactions() when updateTransactions != null:
return updateTransactions(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadTransactions,TResult Function( List<Transaction> transactions)?  updateTransactions,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadTransactions() when loadTransactions != null:
return loadTransactions();case UpdateTransactions() when updateTransactions != null:
return updateTransactions(_that.transactions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadTransactions,required TResult Function( List<Transaction> transactions)  updateTransactions,}) {final _that = this;
switch (_that) {
case LoadTransactions():
return loadTransactions();case UpdateTransactions():
return updateTransactions(_that.transactions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadTransactions,TResult? Function( List<Transaction> transactions)?  updateTransactions,}) {final _that = this;
switch (_that) {
case LoadTransactions() when loadTransactions != null:
return loadTransactions();case UpdateTransactions() when updateTransactions != null:
return updateTransactions(_that.transactions);case _:
  return null;

}
}

}

/// @nodoc


class LoadTransactions implements LoadTransactionsEvent {
  const LoadTransactions();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadTransactions);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadTransactionsEvent.loadTransactions()';
}


}




/// @nodoc


class UpdateTransactions implements LoadTransactionsEvent {
  const UpdateTransactions(final  List<Transaction> transactions): _transactions = transactions;
  

 final  List<Transaction> _transactions;
 List<Transaction> get transactions {
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactions);
}


/// Create a copy of LoadTransactionsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateTransactionsCopyWith<UpdateTransactions> get copyWith => _$UpdateTransactionsCopyWithImpl<UpdateTransactions>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTransactions&&const DeepCollectionEquality().equals(other._transactions, _transactions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_transactions));

@override
String toString() {
  return 'LoadTransactionsEvent.updateTransactions(transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class $UpdateTransactionsCopyWith<$Res> implements $LoadTransactionsEventCopyWith<$Res> {
  factory $UpdateTransactionsCopyWith(UpdateTransactions value, $Res Function(UpdateTransactions) _then) = _$UpdateTransactionsCopyWithImpl;
@useResult
$Res call({
 List<Transaction> transactions
});




}
/// @nodoc
class _$UpdateTransactionsCopyWithImpl<$Res>
    implements $UpdateTransactionsCopyWith<$Res> {
  _$UpdateTransactionsCopyWithImpl(this._self, this._then);

  final UpdateTransactions _self;
  final $Res Function(UpdateTransactions) _then;

/// Create a copy of LoadTransactionsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? transactions = null,}) {
  return _then(UpdateTransactions(
null == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>,
  ));
}


}

/// @nodoc
mixin _$LoadTransactionsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadTransactionsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadTransactionsState()';
}


}

/// @nodoc
class $LoadTransactionsStateCopyWith<$Res>  {
$LoadTransactionsStateCopyWith(LoadTransactionsState _, $Res Function(LoadTransactionsState) __);
}


/// Adds pattern-matching-related methods to [LoadTransactionsState].
extension LoadTransactionsStatePatterns on LoadTransactionsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadTransactionsStateInitial value)?  initial,TResult Function( LoadTransactionsStateLoading value)?  loading,TResult Function( LoadTransactionsStateSuccess value)?  success,TResult Function( LoadTransactionsStateError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadTransactionsStateInitial() when initial != null:
return initial(_that);case LoadTransactionsStateLoading() when loading != null:
return loading(_that);case LoadTransactionsStateSuccess() when success != null:
return success(_that);case LoadTransactionsStateError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadTransactionsStateInitial value)  initial,required TResult Function( LoadTransactionsStateLoading value)  loading,required TResult Function( LoadTransactionsStateSuccess value)  success,required TResult Function( LoadTransactionsStateError value)  error,}){
final _that = this;
switch (_that) {
case LoadTransactionsStateInitial():
return initial(_that);case LoadTransactionsStateLoading():
return loading(_that);case LoadTransactionsStateSuccess():
return success(_that);case LoadTransactionsStateError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadTransactionsStateInitial value)?  initial,TResult? Function( LoadTransactionsStateLoading value)?  loading,TResult? Function( LoadTransactionsStateSuccess value)?  success,TResult? Function( LoadTransactionsStateError value)?  error,}){
final _that = this;
switch (_that) {
case LoadTransactionsStateInitial() when initial != null:
return initial(_that);case LoadTransactionsStateLoading() when loading != null:
return loading(_that);case LoadTransactionsStateSuccess() when success != null:
return success(_that);case LoadTransactionsStateError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Transaction> activeTransactions,  List<Transaction> notActiveTransactions,  Money currentBalance)?  success,TResult Function( String errorMessage)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadTransactionsStateInitial() when initial != null:
return initial();case LoadTransactionsStateLoading() when loading != null:
return loading();case LoadTransactionsStateSuccess() when success != null:
return success(_that.activeTransactions,_that.notActiveTransactions,_that.currentBalance);case LoadTransactionsStateError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Transaction> activeTransactions,  List<Transaction> notActiveTransactions,  Money currentBalance)  success,required TResult Function( String errorMessage)  error,}) {final _that = this;
switch (_that) {
case LoadTransactionsStateInitial():
return initial();case LoadTransactionsStateLoading():
return loading();case LoadTransactionsStateSuccess():
return success(_that.activeTransactions,_that.notActiveTransactions,_that.currentBalance);case LoadTransactionsStateError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Transaction> activeTransactions,  List<Transaction> notActiveTransactions,  Money currentBalance)?  success,TResult? Function( String errorMessage)?  error,}) {final _that = this;
switch (_that) {
case LoadTransactionsStateInitial() when initial != null:
return initial();case LoadTransactionsStateLoading() when loading != null:
return loading();case LoadTransactionsStateSuccess() when success != null:
return success(_that.activeTransactions,_that.notActiveTransactions,_that.currentBalance);case LoadTransactionsStateError() when error != null:
return error(_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class LoadTransactionsStateInitial implements LoadTransactionsState {
  const LoadTransactionsStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadTransactionsStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadTransactionsState.initial()';
}


}




/// @nodoc


class LoadTransactionsStateLoading implements LoadTransactionsState {
  const LoadTransactionsStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadTransactionsStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadTransactionsState.loading()';
}


}




/// @nodoc


class LoadTransactionsStateSuccess implements LoadTransactionsState {
  const LoadTransactionsStateSuccess(final  List<Transaction> activeTransactions, final  List<Transaction> notActiveTransactions, this.currentBalance): _activeTransactions = activeTransactions,_notActiveTransactions = notActiveTransactions;
  

 final  List<Transaction> _activeTransactions;
 List<Transaction> get activeTransactions {
  if (_activeTransactions is EqualUnmodifiableListView) return _activeTransactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_activeTransactions);
}

 final  List<Transaction> _notActiveTransactions;
 List<Transaction> get notActiveTransactions {
  if (_notActiveTransactions is EqualUnmodifiableListView) return _notActiveTransactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notActiveTransactions);
}

 final  Money currentBalance;

/// Create a copy of LoadTransactionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadTransactionsStateSuccessCopyWith<LoadTransactionsStateSuccess> get copyWith => _$LoadTransactionsStateSuccessCopyWithImpl<LoadTransactionsStateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadTransactionsStateSuccess&&const DeepCollectionEquality().equals(other._activeTransactions, _activeTransactions)&&const DeepCollectionEquality().equals(other._notActiveTransactions, _notActiveTransactions)&&(identical(other.currentBalance, currentBalance) || other.currentBalance == currentBalance));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_activeTransactions),const DeepCollectionEquality().hash(_notActiveTransactions),currentBalance);

@override
String toString() {
  return 'LoadTransactionsState.success(activeTransactions: $activeTransactions, notActiveTransactions: $notActiveTransactions, currentBalance: $currentBalance)';
}


}

/// @nodoc
abstract mixin class $LoadTransactionsStateSuccessCopyWith<$Res> implements $LoadTransactionsStateCopyWith<$Res> {
  factory $LoadTransactionsStateSuccessCopyWith(LoadTransactionsStateSuccess value, $Res Function(LoadTransactionsStateSuccess) _then) = _$LoadTransactionsStateSuccessCopyWithImpl;
@useResult
$Res call({
 List<Transaction> activeTransactions, List<Transaction> notActiveTransactions, Money currentBalance
});




}
/// @nodoc
class _$LoadTransactionsStateSuccessCopyWithImpl<$Res>
    implements $LoadTransactionsStateSuccessCopyWith<$Res> {
  _$LoadTransactionsStateSuccessCopyWithImpl(this._self, this._then);

  final LoadTransactionsStateSuccess _self;
  final $Res Function(LoadTransactionsStateSuccess) _then;

/// Create a copy of LoadTransactionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? activeTransactions = null,Object? notActiveTransactions = null,Object? currentBalance = null,}) {
  return _then(LoadTransactionsStateSuccess(
null == activeTransactions ? _self._activeTransactions : activeTransactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>,null == notActiveTransactions ? _self._notActiveTransactions : notActiveTransactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>,null == currentBalance ? _self.currentBalance : currentBalance // ignore: cast_nullable_to_non_nullable
as Money,
  ));
}


}

/// @nodoc


class LoadTransactionsStateError implements LoadTransactionsState {
  const LoadTransactionsStateError(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of LoadTransactionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadTransactionsStateErrorCopyWith<LoadTransactionsStateError> get copyWith => _$LoadTransactionsStateErrorCopyWithImpl<LoadTransactionsStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadTransactionsStateError&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'LoadTransactionsState.error(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $LoadTransactionsStateErrorCopyWith<$Res> implements $LoadTransactionsStateCopyWith<$Res> {
  factory $LoadTransactionsStateErrorCopyWith(LoadTransactionsStateError value, $Res Function(LoadTransactionsStateError) _then) = _$LoadTransactionsStateErrorCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$LoadTransactionsStateErrorCopyWithImpl<$Res>
    implements $LoadTransactionsStateErrorCopyWith<$Res> {
  _$LoadTransactionsStateErrorCopyWithImpl(this._self, this._then);

  final LoadTransactionsStateError _self;
  final $Res Function(LoadTransactionsStateError) _then;

/// Create a copy of LoadTransactionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(LoadTransactionsStateError(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
