

import 'package:dartz/dartz.dart';
import 'package:parentia/core/domain/value_failure.dart';
import 'package:parentia/core/domain/value_object.dart';

class Password extends ValueObject<String> {
  static const int MAX_PASS_CHAR = 30;
  static const int MIN_PASS_CHAR = 6;

  @override
  final Either<ValueFailure<String>, String> value;


  factory Password(String input) {
    return Password._(
      validatePassword(input, MAX_PASS_CHAR, MIN_PASS_CHAR)
    );
  }


  const Password._(this.value);
}


Either<ValueFailure<String>, String> validatePassword(String input, int max_pass_char, int min_pass_char) {

  if (input.length <= max_pass_char && input.length >= min_pass_char) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPassword(failedValue: input));
  }


}