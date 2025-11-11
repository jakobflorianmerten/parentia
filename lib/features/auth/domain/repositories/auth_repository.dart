

import 'package:dartz/dartz.dart';
import 'package:parentia/features/auth/domain/auth_failure.dart';
import 'package:parentia/features/auth/domain/entities/auth_object.dart';
import 'package:parentia/features/auth/domain/value_objects/email.dart';
import 'package:parentia/features/auth/domain/value_objects/password.dart';

abstract class IAuthRepository {

  Future<Option<AuthObject>> getSignedInUser();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required Email email, 
    required Password password
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required Email email, 
    required Password password
  });

  Future<Either<AuthFailure, Unit>> changeEmail(Email email);

  Future<void> signOut();
  Future<Either<AuthFailure, Unit>> deleteAccount();
  Future<Either<AuthFailure, Unit>> sendForgotPasswordMail(Email email);
  Future<Either<AuthFailure, Unit>> reauthenticateUserWithCredential(Email email, Password password);

}