import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:learn_notification/service/ln_service.dart';

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
  static Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
    print("Handling a background message: ${message.messageId}");
  }

  static void _firebaseMessagingForegroundHandler(RemoteMessage message) {
    print('Got a message whilst in the foreground!');
    print('Message data: ${message.data}');

    if (message.notification != null) {
      print('Message also contained a notification: ${message.notification}');
      LNService.sendNotification(message.notification?.title ?? "", message.notification?.body ?? "");
    }
  }

  static Future<String?> fcmToken () async => await FirebaseMessaging.instance.getToken();

  static Future<void> sendMessage() async {

    try {
      await FirebaseMessaging.instance.sendMessage(
        to: "dZkB7BkLSI6LjmLv8oS8JS:APA91bFOFTVRnB71gznDT9G4ZaGRO9At8L9t7AmT686sI89Aso7DyrlrqJ3f5kfuEHqJvy02u1OY84cyPRGtKMsZH8Q8MeHrp-igtr2s1gUkkj7wB2YTUSImzPUKWJXgT6wyibXEHNib",
        data: {
          "title":"FCM Message from G5",
          "body":"This is an FCM notification message!",
        },
        messageId: "1",
        messageType: "A",
        collapseKey: "I",
        ttl: 1
      );
    } catch(e) {
      print("ERROR: $e");
    }
  }
}