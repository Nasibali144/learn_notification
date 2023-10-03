import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:learn_notification/service/fcm_service.dart';
import 'package:learn_notification/service/ln_service.dart';
import 'firebase_options.dart';

/// dZkB7BkLSI6LjmLv8oS8JS:APA91bFOFTVRnB71gznDT9G4ZaGRO9At8L9t7AmT686sI89Aso7DyrlrqJ3f5kfuEHqJvy02u1OY84cyPRGtKMsZH8Q8MeHrp-igtr2s1gUkkj7wB2YTUSImzPUKWJXgT6wyibXEHNib

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await LNService.settings();
  await FCMService.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    LNService.getPermission();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Notification"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            FCMService.sendMessage();
          },
          child: const Text("Show notify"),
        ),
      ),
    );
  }
}
