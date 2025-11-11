import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'value_failure.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T>{
  const factory ValueFailure.unexpectedFailure({
    required T failedValue,
  }) = UnexpectedFailure<T>;
  const factory ValueFailure.longFullName({
    required T failedValue,
  }) = LongFullName<T>;
  const factory ValueFailure.invalidUsername({
    required T failedValue,
  }) = InvalidUsername<T>;
  const factory ValueFailure.invalidEmailAddress({
    required T failedValue,
  }) = InvalidEmailAddress<T>;

  const factory ValueFailure.invalidPassword({
    required T failedValue,
  }) = InvalidPassword<T>;

  const factory ValueFailure.invalidAddress({
    required T failedValue,
  }) = InvalidAddress<T>;
  const factory ValueFailure.invalidMoneyFormat({
    required T failedValue,
  }) = InvalidMoneyFormat<T>;
}