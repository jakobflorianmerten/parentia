import 'package:freezed_annotation/freezed_annotation.dart';

part 'meetup_failures.freezed.dart';

@freezed
abstract class MeetupFailure with _$MeetupFailure{
  const factory MeetupFailure.meetupServerError() = MeetupServerError;
  const factory MeetupFailure.valueError() = ValueError;
  const factory MeetupFailure.sameDebtorAndCreditorError() = SameDebtorAndCreditorError;

}