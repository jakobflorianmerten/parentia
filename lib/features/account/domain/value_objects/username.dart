

import 'package:dartz/dartz.dart';
import 'package:parentia/core/domain/value_failure.dart';
import 'package:parentia/core/domain/value_object.dart';

class Username extends ValueObject<String> {

  static const int MAX_ALLOWED_CHARACTERS = 15;
  static const int MIN_ALLOWED_CHARACTERS = 2;

  @override
  final Either<ValueFailure<String>, String> value;

  factory Username(String input) {
    return Username._(
      validateUserName(input, MAX_ALLOWED_CHARACTERS, MIN_ALLOWED_CHARACTERS)
    );
  }

  const Username._(this.value);

}


Either<ValueFailure<String>, String> validateUserName(String input, int max_allowed_characters, int min_allowed_characters) {
  if (input.length <= max_allowed_characters && input.length >= min_allowed_characters) {
    return right(input);
  } else {
    return left(ValueFailure.invalidUsername(failedValue: input));
  }
}