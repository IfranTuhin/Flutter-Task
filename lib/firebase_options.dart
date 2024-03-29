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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyB1U2ac7-166iH08A67W7Ae-9x6gbP14Y0',
    appId: '1:729031191380:web:ba06a3615943039c02b6c1',
    messagingSenderId: '729031191380',
    projectId: 'flutter-task-81dad',
    authDomain: 'flutter-task-81dad.firebaseapp.com',
    storageBucket: 'flutter-task-81dad.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCAYZ7Jlc4euseSKo5QEy_BsYGcni9cuaU',
    appId: '1:729031191380:android:d5f92d4159d5749302b6c1',
    messagingSenderId: '729031191380',
    projectId: 'flutter-task-81dad',
    storageBucket: 'flutter-task-81dad.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAFVg5ppIXMG2im-OOXERr9fKJ5Q7N6y2o',
    appId: '1:729031191380:ios:c801552c6db9e61002b6c1',
    messagingSenderId: '729031191380',
    projectId: 'flutter-task-81dad',
    storageBucket: 'flutter-task-81dad.appspot.com',
    iosBundleId: 'com.example.flutterTask',
  );
}
