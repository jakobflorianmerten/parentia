


import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:parentia/features/account/domain/entities/notification.dart';
import 'package:parentia/features/account/domain/entities/user.dart';
import 'package:parentia/features/account/domain/user_failures.dart';

abstract class UserRepository {

  Future<Either<UserFailures, User>> loadUserById(String userId);
  Future<Either<UserFailures, List<User>>> loadAllUsers();
  Future<Either<UserFailures, List<User>>> searchUsersByUsernameOrName(String input);
  Future<Either<UserFailures, Unit>> createUser(Option<File> profilePicture, String fullName, String username);
  Future<Either<UserFailures, Unit>> updateUser(String userId, String? fullName, File? profilePicture, String? email, String? username);
  Future<Either<UserFailures, Unit>> saveNotificationToken(String uid, String fcmToken);
  Future<Either<UserFailures, Unit>> deleteNotificationTokenFromCurrentLoggedInUser(String uid);
  Future<void> updateUserLanguagePreference(String languageCode);

  Future<Either<UserFailures, List<Notification>>> loadAllNotificationsByUserId(String uid);
  Future<Either<UserFailures, Unit>> markNotificationsAsRead(List<Notification> notifications);

  Stream<User> get currentUserStream;
  Stream<List<Notification>> get notificationsStream;
  

}