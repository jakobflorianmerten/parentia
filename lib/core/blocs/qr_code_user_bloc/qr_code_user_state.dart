part of 'qr_code_user_bloc.dart';

@freezed
class QrCodeUserState with _$QrCodeUserState{
  const factory QrCodeUserState.initial() = QrCodeUserStateInital;
  const factory QrCodeUserState.loading() = QrCodeUserStateLoading;
  const factory QrCodeUserState.success(User user) = QrCodeUserStateSuccess;
  const factory QrCodeUserState.error(String errorMessage) = QrCodeUserStateError;
}
