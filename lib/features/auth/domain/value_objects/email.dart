

import 'package:dartz/dartz.dart';
import 'package:parentia/core/domain/value_failure.dart';
import 'package:parentia/core/domain/value_object.dart';

class Email extends ValueObject<String> {

  @override
  final Either<ValueFailure<String>, String> value;

  factory Email(String input) {
    return Email._(
      validateEmailAddress(input)
    );
  }


  const Email._(this.value);

}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {

  const emailRegex =
      r"""^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z]+$""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmailAddress(failedValue: input));
  }

}