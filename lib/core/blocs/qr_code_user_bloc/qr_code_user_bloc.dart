import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parentia/features/account/domain/entities/user.dart';
import 'package:parentia/features/account/domain/repositories/user_repository.dart';
import 'package:parentia/features/account/domain/user_failures.dart';

part 'qr_code_user_event.dart';
part 'qr_code_user_state.dart';

part 'qr_code_user_bloc.freezed.dart';

class QrCodeUserBloc extends Bloc<QrCodeUserEvent, QrCodeUserState> {
  final UserRepository _userRepo;
  QrCodeUserBloc(this._userRepo) : super(QrCodeUserState.initial()) {
    on<QrCodeUserEventLoadUser>((event, emit) async {
      emit(QrCodeUserState.loading());
      final result = await _userRepo.loadUserById(event.userId);
      result.fold((failure) {
        emit(QrCodeUserState.error((failure as ErrorWithMessage).m));
      }, (user) {
        emit(QrCodeUserState.success(user));
      });
    });
  }
}
