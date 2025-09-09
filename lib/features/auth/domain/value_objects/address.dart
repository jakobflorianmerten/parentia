import 'package:dartz/dartz.dart';
import 'package:parentia/core/domain/value_failure.dart';
import 'package:parentia/core/domain/value_object.dart';

class Address extends ValueObject<String> {
  final String streetName;
  final int houseNumber;
  final int postalCode;
  final String city;
  final String country;

  @override
  final Either<ValueFailure<String>, String> value;

  // Private constructor
  const Address._(
    this.value, {
    required this.streetName,
    required this.houseNumber,
    required this.postalCode,
    required this.city,
    required this.country,
  });

  factory Address({
    required String streetName,
    required int houseNumber,
    required int postalCode,
    required String city,
    required String country,
  }) {
    // TODO: change validation
    if (streetName.isEmpty ||
        houseNumber < 0 ||
        postalCode < 100 ||
        city.isEmpty ||
        country.isEmpty) {
      return Address._(
        left(ValueFailure.invalidAddress(failedValue: streetName)),
        streetName: streetName,
        houseNumber: houseNumber,
        postalCode: postalCode,
        city: city,
        country: country,
      );
    }

    return Address._(
      right('$streetName, $houseNumber, $postalCode, $city, $country'),
      streetName: streetName,
      houseNumber: houseNumber,
      postalCode: postalCode,
      city: city,
      country: country,
    );
  }
}
