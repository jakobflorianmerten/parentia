


import 'package:dartz/dartz.dart';
import 'package:parentia/core/domain/value_failure.dart';
import 'package:parentia/core/domain/value_object.dart';

class FullName extends ValueObject<String> {

  static const int MAX_ALLOWED_CHARACTERS = 20;

  @override
  final Either<ValueFailure<String>, String> value;

  factory FullName(String input) {
    return FullName._(
      validateFullName(input, MAX_ALLOWED_CHARACTERS)
    );
  }

  const FullName._(this.value);

}


Either<ValueFailure<String>, String> validateFullName(String input, int max_allowed_characters) {
  if (input.length <= max_allowed_characters) {
    return right(input);
  } else {
    return left(ValueFailure.longFullName(failedValue: input));
  }
}