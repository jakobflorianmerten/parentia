part of 'qr_code_user_bloc.dart';

@freezed
abstract class QrCodeUserEvent with _$QrCodeUserEvent{
  const factory QrCodeUserEvent.loadUser(String userId) = QrCodeUserEventLoadUser;
}
