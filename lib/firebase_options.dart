// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDpmVoZgmwfTCgRCp8tWvQxD8P4A9ze6eU',
    appId: '1:307593810216:web:07dccba5d86ae656bd401d',
    messagingSenderId: '307593810216',
    projectId: 'duggar-dost-d7d74',
    authDomain: 'duggar-dost-d7d74.firebaseapp.com',
    storageBucket: 'duggar-dost-d7d74.appspot.com',
    measurementId: 'G-DSZN0ZM051',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBqBLtndROIS9myQca19FlilwpiTTujUM4',
    appId: '1:307593810216:android:dc56f53a00a8c795bd401d',
    messagingSenderId: '307593810216',
    projectId: 'duggar-dost-d7d74',
    storageBucket: 'duggar-dost-d7d74.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDQQx23tOmE2LGmiRxiT8LsA7f_yDbudDI',
    appId: '1:307593810216:ios:f75f8aeae71f9f36bd401d',
    messagingSenderId: '307593810216',
    projectId: 'duggar-dost-d7d74',
    storageBucket: 'duggar-dost-d7d74.appspot.com',
    iosBundleId: 'com.CodeQuintet.duggarDost',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDQQx23tOmE2LGmiRxiT8LsA7f_yDbudDI',
    appId: '1:307593810216:ios:f75f8aeae71f9f36bd401d',
    messagingSenderId: '307593810216',
    projectId: 'duggar-dost-d7d74',
    storageBucket: 'duggar-dost-d7d74.appspot.com',
    iosBundleId: 'com.CodeQuintet.duggarDost',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDpmVoZgmwfTCgRCp8tWvQxD8P4A9ze6eU',
    appId: '1:307593810216:web:529327a24f730bffbd401d',
    messagingSenderId: '307593810216',
    projectId: 'duggar-dost-d7d74',
    authDomain: 'duggar-dost-d7d74.firebaseapp.com',
    storageBucket: 'duggar-dost-d7d74.appspot.com',
    measurementId: 'G-4V7RLYV3GE',
  );
}
