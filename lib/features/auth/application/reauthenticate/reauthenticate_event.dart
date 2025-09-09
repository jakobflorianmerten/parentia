part of 'reauthenticate_bloc.dart';

@freezed
abstract class ReauthenticateEvent with _$ReauthenticateEvent{
  const factory ReauthenticateEvent.emailUpdated(String email) = ReauthenticateEventEmailUpdated;
  const factory ReauthenticateEvent.passwordUpdated(String password) = ReauthenticateEventPasswordUpdated;
  const factory ReauthenticateEvent.save() = ReauthenticateEventSave;
}
