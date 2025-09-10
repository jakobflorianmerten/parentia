import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:parentia/core/get_it.dart';
import 'package:parentia/features/account/domain/entities/user.dart';
import 'package:parentia/features/account/infrastructure/repositories/user_repository.dart';
import 'package:permission_handler/permission_handler.dart';

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
    _setupMessageListeners();
  }

  Future<AuthorizationStatus> requestPermission() async {

    NotificationSettings currentSettings =
        await _firebaseMessaging.getNotificationSettings();
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
        throw Exception('no user is logged in');
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
        throw Exception('no user is logged in');
      }
      await locator<UserRepositoryImpl>().deleteNotificationTokenFromCurrentLoggedInUser(
        currentUser.uid,
      );
    } on FirebaseException catch (e) {
      print(e);
    }
  }

  void _setupMessageListeners() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (message.notification != null) {
        print(
          'Nachricht enthielt auch eine Benachrichtigung: ${message.notification}',
        );
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('Nachricht hat die App geöffnet: ${message.data}');
    });
  }

  void dispose() {
    _settingsStreamController.close();
  }
}

Future<bool> ensureCameraPermission() async {
  var status = await Permission.camera.status;

  if (status.isGranted) {
    print("Permission is already granted.");
    return true;
  }

  if (status.isPermanentlyDenied) {
    print("Permission is permanently denied. Opening app settings.");
    await openAppSettings();
    return false;
  }

  status = await Permission.camera.request();

  if (status.isGranted) {
    print("Permission was granted.");
    return true;
  }
  return false;
}