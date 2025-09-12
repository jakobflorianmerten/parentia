import 'dart:async';
import 'dart:io' show Platform;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:parentia/core/get_it.dart';
import 'package:parentia/features/account/domain/entities/user.dart';
import 'package:parentia/features/account/infrastructure/repositories/user_repository.dart';

class NotificationService {
  static final NotificationService _instance = NotificationService._internal();
  factory NotificationService() => _instance;
  NotificationService._internal();

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  final StreamController<NotificationSettings> _settingsStreamController =
      StreamController<NotificationSettings>.broadcast();
  Stream<NotificationSettings> get settingsStream =>
      _settingsStreamController.stream;

  Future<void> initialize() async {
    _firebaseMessaging.onTokenRefresh.listen(_saveToken);
    await _checkInitialPermission();
  }

  Future<void> onLoginOrRegister() async {
    NotificationSettings currentSettings = await _firebaseMessaging
        .getNotificationSettings();
    if (currentSettings.authorizationStatus == AuthorizationStatus.authorized) {
      // check if there is an fcm token for the current user
      await _getTokenAndSave();
    }
  }

  Future<AuthorizationStatus> requestPermission() async {
    NotificationSettings currentSettings = await _firebaseMessaging
        .getNotificationSettings();
    if (currentSettings.authorizationStatus == AuthorizationStatus.authorized) {
      return currentSettings.authorizationStatus;
    }

    NotificationSettings settings = await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    _settingsStreamController.add(settings);

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      await _getTokenAndSave();
    }

    return settings.authorizationStatus;
  }

  Future<void> checkPermissionOnAppResume() async {
    NotificationSettings settings = await _firebaseMessaging
        .getNotificationSettings();
    _settingsStreamController.add(settings);
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      await _getTokenAndSave();
    } else {
      await _deleteToken();
    }
  }

  Future<void> _checkInitialPermission() async {
    NotificationSettings settings = await _firebaseMessaging
        .getNotificationSettings();
    _settingsStreamController.add(settings);
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      await _getTokenAndSave();
    }
  }

  Future<void> _getTokenAndSave() async {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      await _firebaseMessaging.getAPNSToken();
    }
    String? token = await _firebaseMessaging.getToken();
    if (token != null) {
      _saveToken(token);
    }
  }

  Future<void> _saveToken(String token) async {
    try {
      final currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser == null) {
        return;
      }
      await locator<UserRepositoryImpl>().saveNotificationToken(
        currentUser.uid,
        token,
      );
    } on FirebaseException catch (e) {
      print(e);
    }
  }

  Future<void> _deleteToken() async {
    try {
      final currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser == null) {
        return;
      }
      await locator<UserRepositoryImpl>()
          .deleteNotificationTokenFromCurrentLoggedInUser(
            currentUser.uid,
          );
    } on FirebaseException catch (e) {
      print(e);
    }
  }

  void dispose() {
    _settingsStreamController.close();
  }
}


String getLanguageCode() {
  final String locale = Platform.localeName;
  return locale.split('_')[0];
}