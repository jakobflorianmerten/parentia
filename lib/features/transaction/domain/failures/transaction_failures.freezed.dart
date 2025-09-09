// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionFailure()';
}


}

/// @nodoc
class $TransactionFailureCopyWith<$Res>  {
$TransactionFailureCopyWith(TransactionFailure _, $Res Function(TransactionFailure) __);
}


/// Adds pattern-matching-related methods to [TransactionFailure].
extension TransactionFailurePatterns on TransactionFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TransactionServerError value)?  transactionServerError,TResult Function( ValueError value)?  valueError,TResult Function( SameDebtorAndCreditorError value)?  sameDebtorAndCreditorError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TransactionServerError() when transactionServerError != null:
return transactionServerError(_that);case ValueError() when valueError != null:
return valueError(_that);case SameDebtorAndCreditorError() when sameDebtorAndCreditorError != null:
return sameDebtorAndCreditorError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TransactionServerError value)  transactionServerError,required TResult Function( ValueError value)  valueError,required TResult Function( SameDebtorAndCreditorError value)  sameDebtorAndCreditorError,}){
final _that = this;
switch (_that) {
case TransactionServerError():
return transactionServerError(_that);case ValueError():
return valueError(_that);case SameDebtorAndCreditorError():
return sameDebtorAndCreditorError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TransactionServerError value)?  transactionServerError,TResult? Function( ValueError value)?  valueError,TResult? Function( SameDebtorAndCreditorError value)?  sameDebtorAndCreditorError,}){
final _that = this;
switch (_that) {
case TransactionServerError() when transactionServerError != null:
return transactionServerError(_that);case ValueError() when valueError != null:
return valueError(_that);case SameDebtorAndCreditorError() when sameDebtorAndCreditorError != null:
return sameDebtorAndCreditorError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  transactionServerError,TResult Function()?  valueError,TResult Function()?  sameDebtorAndCreditorError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TransactionServerError() when transactionServerError != null:
return transactionServerError();case ValueError() when valueError != null:
return valueError();case SameDebtorAndCreditorError() when sameDebtorAndCreditorError != null:
return sameDebtorAndCreditorError();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  transactionServerError,required TResult Function()  valueError,required TResult Function()  sameDebtorAndCreditorError,}) {final _that = this;
switch (_that) {
case TransactionServerError():
return transactionServerError();case ValueError():
return valueError();case SameDebtorAndCreditorError():
return sameDebtorAndCreditorError();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  transactionServerError,TResult? Function()?  valueError,TResult? Function()?  sameDebtorAndCreditorError,}) {final _that = this;
switch (_that) {
case TransactionServerError() when transactionServerError != null:
return transactionServerError();case ValueError() when valueError != null:
return valueError();case SameDebtorAndCreditorError() when sameDebtorAndCreditorError != null:
return sameDebtorAndCreditorError();case _:
  return null;

}
}

}

/// @nodoc


class TransactionServerError implements TransactionFailure {
  const TransactionServerError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionServerError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionFailure.transactionServerError()';
}


}




/// @nodoc


class ValueError implements TransactionFailure {
  const ValueError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValueError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionFailure.valueError()';
}


}




/// @nodoc


class SameDebtorAndCreditorError implements TransactionFailure {
  const SameDebtorAndCreditorError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SameDebtorAndCreditorError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionFailure.sameDebtorAndCreditorError()';
}


}




// dart format on
