import 'package:flutter/material.dart';
import 'package:learn_notification/service/ln_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LNService.settings();

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
            LNService.sendNotification();
          },
          child: const Text("Show notify"),
        ),
      ),
    );
  }
}
