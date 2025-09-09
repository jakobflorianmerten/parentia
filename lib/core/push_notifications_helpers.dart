// 1) Instanz des Plugins
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:parentia/core/get_it.dart';
import 'package:parentia/features/account/domain/entities/user.dart';
import 'package:parentia/features/account/infrastructure/repositories/user_repository.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> setupPushNotifications() async {
  // 4) Initialisierung flutter_local_notifications
  const AndroidInitializationSettings initAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');
  const DarwinInitializationSettings initIOS = DarwinInitializationSettings(
    requestAlertPermission: true,
    requestBadgePermission: true,
    requestSoundPermission: true,
  );
  const InitializationSettings initSettings = InitializationSettings(
    android: initAndroid,
    iOS: initIOS,
  );
  await flutterLocalNotificationsPlugin.initialize(
    initSettings,
    onDidReceiveNotificationResponse: (notificationResponse) {
      // Hier kannst du auf Tap reagieren (z.B. Navigation)
      final payload = notificationResponse.payload;
      if (payload != null) {
        print('Notification tapped, transactionId: $payload');
      }
    },
  );
  // 5) Background-Nachrichten hören
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  // 6) Foreground-Presentation (iOS)
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
}

Future<bool> ensureCameraPermission() async {
  final status = await Permission.camera.status;

  if (status.isGranted) {
    return true;
  }

  if (status.isDenied || status.isLimited) {
    final result = await Permission.camera.request();
    return result.isGranted;
  }

  // Bei permanentlyDenied z. B. den Nutzer zu den App-Einstellungen leiten
  if (status.isPermanentlyDenied) {
    await openAppSettings();
  }

  return false;
}

bool _isRequestingPermission = false;

Future<void> requestPermissionAndSaveToken(User currentUser) async {
  if (_isRequestingPermission) return;
  _isRequestingPermission = true;

  try {
    final permission = Permission.notification;

    if (await permission.isDenied || await permission.isPermanentlyDenied) {
      PermissionStatus status = await permission.request();
      if (!status.isGranted) {
        return;
      }
    }

    NotificationSettings settings = await FirebaseMessaging.instance
        .getNotificationSettings();

    if (settings.authorizationStatus == AuthorizationStatus.notDetermined) {
      NotificationSettings newSettings = await FirebaseMessaging.instance
          .requestPermission(
            alert: true,
            badge: true,
            sound: true,
          );

      if (newSettings.authorizationStatus != AuthorizationStatus.authorized) {
        print('User declined or has not accepted permission');
        return;
      }
    }

    if (settings.authorizationStatus == AuthorizationStatus.authorized ||
        settings.authorizationStatus == AuthorizationStatus.provisional) {
      String? token = await FirebaseMessaging.instance.getToken();
      if (token != null) {
        print('FCM Token: $token');
        locator<UserRepositoryImpl>().saveNotificationToken(
          currentUser.id,
          token,
        );
      }
    }
  } catch (e) {
    print('Error during permission/token request: $e');
  } finally {
    _isRequestingPermission = false;
  }
}

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

// 2) Background-Handler
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  showLocalNotification(message);
}

// 3) Lokale Anzeige-Funktion
void showLocalNotification(RemoteMessage message) async {
  const AndroidNotificationDetails androidDetails = AndroidNotificationDetails(
    'transaction_channel', // Kanal-ID
    'Transactions', // Kanal-Name
    importance: Importance.max,
    priority: Priority.high,
  );
  const NotificationDetails platformDetails = NotificationDetails(
    android: androidDetails,
  );
  await flutterLocalNotificationsPlugin.show(
    message.notification.hashCode, // eindeutige ID
    message.notification?.title, // Titel
    message.notification?.body, // Text
    platformDetails,
    payload: message.data['transactionId'],
  );
}
