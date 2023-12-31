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
    apiKey: 'AIzaSyB9c0xSBuo0Dba4Fhk0vADjcwwqp0WOtPk',
    appId: '1:601737142432:web:cef36be482b1f4d54b29c5',
    messagingSenderId: '601737142432',
    projectId: 'fsdangular-490b1',
    authDomain: 'fsdangular-490b1.firebaseapp.com',
    storageBucket: 'fsdangular-490b1.appspot.com',
    measurementId: 'G-H1WEESVM6J',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCDJVDDFgJgwnmT1dsitn21K96XsglGnwk',
    appId: '1:601737142432:android:a49fe82209ebac714b29c5',
    messagingSenderId: '601737142432',
    projectId: 'fsdangular-490b1',
    storageBucket: 'fsdangular-490b1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAJlyyTMDyFv1iN3JUUdA6HkAwQukOaguw',
    appId: '1:601737142432:ios:288e6f8fe8538f2b4b29c5',
    messagingSenderId: '601737142432',
    projectId: 'fsdangular-490b1',
    storageBucket: 'fsdangular-490b1.appspot.com',
    iosClientId: '601737142432-ine95mrm8bvn9j5df59a6d5r1654b658.apps.googleusercontent.com',
    iosBundleId: 'com.auribises.fsdflutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAJlyyTMDyFv1iN3JUUdA6HkAwQukOaguw',
    appId: '1:601737142432:ios:22db2fa6d5e44ec84b29c5',
    messagingSenderId: '601737142432',
    projectId: 'fsdangular-490b1',
    storageBucket: 'fsdangular-490b1.appspot.com',
    iosClientId: '601737142432-5jk6hlpja1h7ietbhcpaqvm1deijilq3.apps.googleusercontent.com',
    iosBundleId: 'com.auribises.fsdflutter.RunnerTests',
  );
}
