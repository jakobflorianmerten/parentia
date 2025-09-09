import 'package:dartz/dartz.dart';
import 'package:parentia/core/domain/value_failure.dart';
import 'package:parentia/core/domain/value_object.dart';

class Money extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory Money(double input) {
    return Money._(_validateInput(input));
  }

  Money._(this.value);
}

Either<ValueFailure<double>, double> _validateInput(double input) {
  return right(input);
}
