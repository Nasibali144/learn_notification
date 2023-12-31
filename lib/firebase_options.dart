// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB3VVXe34yVdtRN3cpjrPl_b0XO2Dmtws4',
    appId: '1:761517653437:web:f4943314026aefe10b26d4',
    messagingSenderId: '761517653437',
    projectId: 'fir-connection-1-uz',
    authDomain: 'fir-connection-1-uz.firebaseapp.com',
    databaseURL: 'https://fir-connection-1-uz-default-rtdb.firebaseio.com',
    storageBucket: 'fir-connection-1-uz.appspot.com',
    measurementId: 'G-0M0GE84B80',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAhQgRNTYVH5h_FVPJcyQYkkOm7XjtkNEk',
    appId: '1:761517653437:android:e0b675b8e3d0cc290b26d4',
    messagingSenderId: '761517653437',
    projectId: 'fir-connection-1-uz',
    databaseURL: 'https://fir-connection-1-uz-default-rtdb.firebaseio.com',
    storageBucket: 'fir-connection-1-uz.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAwHJG6ZssfVWpbQx1f2yYr1lzixwxcYNY',
    appId: '1:761517653437:ios:965b5600339c83f30b26d4',
    messagingSenderId: '761517653437',
    projectId: 'fir-connection-1-uz',
    databaseURL: 'https://fir-connection-1-uz-default-rtdb.firebaseio.com',
    storageBucket: 'fir-connection-1-uz.appspot.com',
    iosBundleId: 'com.example.learnNotification',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAwHJG6ZssfVWpbQx1f2yYr1lzixwxcYNY',
    appId: '1:761517653437:ios:6925652872c892890b26d4',
    messagingSenderId: '761517653437',
    projectId: 'fir-connection-1-uz',
    databaseURL: 'https://fir-connection-1-uz-default-rtdb.firebaseio.com',
    storageBucket: 'fir-connection-1-uz.appspot.com',
    iosBundleId: 'com.example.learnNotification.RunnerTests',
  );
}
