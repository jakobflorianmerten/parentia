import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:parentia/features/auth/domain/auth_failure.dart';
import 'package:parentia/features/auth/domain/entities/auth_object.dart';
import 'package:parentia/features/auth/domain/repositories/auth_repository.dart';
import 'package:parentia/features/auth/domain/value_objects/email.dart';
import 'package:parentia/features/auth/domain/value_objects/password.dart';

class ImplAuthRepository implements IAuthRepository {
  final firebase.FirebaseAuth _firebaseAuth;

  const ImplAuthRepository(this._firebaseAuth);

  @override
  Future<Option<AuthObject>> getSignedInUser() async {
    final firebaseUser = _firebaseAuth.currentUser;
    if (firebaseUser != null && firebaseUser.email != null) {
      return some(
        AuthObject(uid: firebaseUser.uid, email: firebaseUser.email!),
      );
    } else {
      return none();
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required Email email,
    required Password password,
  }) async {
    final emailAddressStr = email.value.getOrElse(() => 'INVALID EMAIL');
    final passwordStr = password.value.getOrElse(() => 'INVALID PASSWORD');
    try {
      final result = await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      User? user = result.user;

      if (user != null && !user.emailVerified) {
        await user.sendEmailVerification();
      }
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required Email email,
    required Password password,
  }) async {
    final emailAddressStr = email.value.getOrElse(() => 'INVALID EMAIL');
    final passwordStr = password.value.getOrElse(() => 'INVALID PASSWORD');
    try {
      return await _firebaseAuth
          .signInWithEmailAndPassword(
            email: emailAddressStr,
            password: passwordStr,
          )
          .then((firebase.UserCredential _) => right(unit));
    } on firebase.FirebaseAuthException catch (e) {
      if (e.code == 'ERROR_WRONG_PASSWORD' ||
          e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<void> signOut() async {
    return await _firebaseAuth.signOut();
  }

  @override
  Future<Either<AuthFailure, Unit>> changeEmail(Email email) async {
    try {
      final user = _firebaseAuth.currentUser!;
      await user.verifyBeforeUpdateEmail(email.getOrCrash());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> deleteAccount() async {
    try {
      await _firebaseAuth.currentUser?.delete();
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'requires-recent-login') {
        return left(AuthFailure.deleteUserButNeedToReauthenticate());
      } else {
        return left(AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sendForgotPasswordMail(Email email) async {
    try {
      final String emailString = email.getOrCrash();
      await _firebaseAuth.sendPasswordResetEmail(email: emailString);
      return right(unit);
    } on firebase.FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        return left(AuthFailure.passwordResetInvalidEmail());
      }
      return left(AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> reauthenticateUserWithCredential(
    Email email,
    Password password,
  ) async {
    try {
      final User? user = _firebaseAuth.currentUser;
      if (user == null) {
        return left(AuthFailure.reauthenticateUserButNoUserLoggedIn());
      }
      if (user.email! != email.getOrCrash()) {
        return left(AuthFailure.reauthenticateUserWithDifferentEmail());
      }
      AuthCredential credential = EmailAuthProvider.credential(
        email: email.getOrCrash(),
        password: password.getOrCrash(),
      );
      await user.reauthenticateWithCredential(credential);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-credential') {
        return left(AuthFailure.reauthenticateInvalidCredential());
      } else if (e.code == 'user-mismatch') {
        return left(AuthFailure.reauthenticateUserMismatch());
      } else {
        return left(AuthFailure.serverError());
      }
    }
  }
}
