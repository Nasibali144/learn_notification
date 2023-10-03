import 'package:firebase_messaging/firebase_messaging.dart';

sealed class FCMService {
  static final fcm = FirebaseMessaging.instance;

  static Future<void> init() async {
    /// background
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    /// foreground
    FirebaseMessaging.onMessage.listen(_firebaseMessagingForegroundHandler);

    /// permission
    NotificationSettings settings = await fcm.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    fcmToken().then(print);
  }

  @pragma('vm:entry-point')
  static Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    print("Handling a background message: ${message.messageId}");
  }

  static void _firebaseMessagingForegroundHandler(RemoteMessage message) {
    print('Got a message whilst in the foreground!');
    print('Message data: ${message.data}');

    if (message.notification != null) {
      print('Message also contained a notification: ${message.notification}');
    }
  }

  static Future<String?> fcmToken () async => await FirebaseMessaging.instance.getToken();

}