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
    apiKey: 'AIzaSyBFfEBnEnszWzuck804762kpLiEUMoZ7Ko',
    appId: '1:366573296479:web:c69f1eb31141a9fddab4ea',
    messagingSenderId: '366573296479',
    projectId: 'chatapp-2f2e0',
    authDomain: 'chatapp-2f2e0.firebaseapp.com',
    storageBucket: 'chatapp-2f2e0.appspot.com',
    measurementId: 'G-N71D8XKG5X',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCv5Bcekzd41Xvo7OU8Gz-dS3WEx5NtLgY',
    appId: '1:366573296479:android:86831c709685af3bdab4ea',
    messagingSenderId: '366573296479',
    projectId: 'chatapp-2f2e0',
    storageBucket: 'chatapp-2f2e0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBn0YGPMqFeHWw62Hcn9bTGplBrteYfcOI',
    appId: '1:366573296479:ios:0249e48bee13f8c9dab4ea',
    messagingSenderId: '366573296479',
    projectId: 'chatapp-2f2e0',
    storageBucket: 'chatapp-2f2e0.appspot.com',
    iosBundleId: 'com.example.chaty',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBn0YGPMqFeHWw62Hcn9bTGplBrteYfcOI',
    appId: '1:366573296479:ios:8aab4db165008ffbdab4ea',
    messagingSenderId: '366573296479',
    projectId: 'chatapp-2f2e0',
    storageBucket: 'chatapp-2f2e0.appspot.com',
    iosBundleId: 'com.example.chaty.RunnerTests',
  );
}