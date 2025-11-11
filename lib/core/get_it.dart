import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:parentia/core/blocs/qr_code_user_bloc/qr_code_user_bloc.dart';
import 'package:parentia/core/go_router.dart';
import 'package:parentia/features/account/application/blocs/change_current_user/change_current_user_bloc.dart';
import 'package:parentia/features/account/application/blocs/create_user/create_user_bloc.dart';
import 'package:parentia/features/account/application/blocs/current_user/current_user_bloc.dart';
import 'package:parentia/features/account/application/blocs/delete_user/bloc/delete_user_bloc.dart';
import 'package:parentia/features/account/application/blocs/load_notifications/load_notifications_bloc.dart';
import 'package:parentia/features/account/infrastructure/repositories/user_repository.dart';
import 'package:parentia/features/auth/application/forgot_password/forgot_password_bloc.dart';
import 'package:parentia/features/auth/application/reauthenticate/reauthenticate_bloc.dart';
import 'package:parentia/features/auth/application/register/register_bloc.dart';
import 'package:parentia/features/auth/application/signin/signin_bloc.dart';
import 'package:parentia/features/auth/infrastructure/repositories/auth_repository.dart';
import 'package:parentia/features/meetup/application/blocs/load_meetups/load_meetups_bloc.dart';
import 'package:parentia/features/meetup/application/blocs/load_users_bloc/bloc/load_users_bloc.dart';
import 'package:parentia/features/meetup/application/blocs/new_meetup_bloc/new_meetup_bloc.dart';
import 'package:parentia/features/meetup/application/blocs/meetup/meetup_bloc.dart';
import 'package:parentia/features/meetup/application/blocs/meetup_history/meetup_history_bloc.dart';
import 'package:parentia/features/meetup/infrastructure/repositories/meetup_repository.dart';

final locator = GetIt.instance;

void setup() {

  // GoRouter
  // locator.registerLazySingleton<GoRouter>(() => configureGoRouter(status));

  // Repositories
  locator.registerLazySingleton(() => UserRepositoryImpl());

  locator.registerLazySingleton(
    () => ImplAuthRepository(FirebaseAuth.instance),
  );
  locator.registerFactory(() => RegisterBloc(locator<ImplAuthRepository>()));
  locator.registerFactory(() => SigninBloc(locator<ImplAuthRepository>(), locator<UserRepositoryImpl>()));
  locator.registerFactory(() => ForgotPasswordBloc(locator<ImplAuthRepository>()));

  // User Kontext
  locator.registerFactory(() => CreateUserBloc(locator<UserRepositoryImpl>()));
  locator.registerFactory(() => LoadUsersBloc(locator<UserRepositoryImpl>()));
  locator.registerFactory(
    () => LoadNotificationsBloc(locator<UserRepositoryImpl>()),
  );
  locator.registerFactory(
    () => CurrentUserBloc(
      locator<ImplAuthRepository>(),
      locator<UserRepositoryImpl>(),
    ),
  );
  locator.registerFactory(
    () => ChangeCurrentUserBloc(
      locator<UserRepositoryImpl>(),
      locator<ImplAuthRepository>(),
    ),
  );
  locator.registerFactory(() => QrCodeUserBloc(locator<UserRepositoryImpl>()));
  locator.registerFactory(() => ReauthenticateBloc(locator<ImplAuthRepository>()));
  locator.registerFactory(() => DeleteUserBloc(locator<ImplAuthRepository>()));

  // Meetup Kontext
  locator.registerLazySingleton(() => MeetupRepositoryImpl());
  locator.registerFactory(
    () => NewMeetupBloc(locator<MeetupRepositoryImpl>()),
  );
  locator.registerFactory(
    () => MeetupBloc(locator<MeetupRepositoryImpl>()),
  );
  locator.registerFactory(
    () => LoadMeetupsBloc(locator<MeetupRepositoryImpl>()),
  );

  locator.registerFactory(
    () => MeetupHistoryBloc(locator<MeetupRepositoryImpl>()),
  );
}
