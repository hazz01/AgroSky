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
    apiKey: 'AIzaSyD8Y2iqGGewH8ozX1hIA8pPMLIXtqPSg2E',
    appId: '1:520935523382:web:ad60859ab58efba350c497',
    messagingSenderId: '520935523382',
    projectId: 'agroskypea',
    authDomain: 'agroskypea.firebaseapp.com',
    databaseURL: 'https://agroskypea-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'agroskypea.appspot.com',
    measurementId: 'G-H17HTTVRCH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA5CrzDVNt5otImohlpYtBrWTmdz2pdiKU',
    appId: '1:520935523382:android:fa765232b0621e4450c497',
    messagingSenderId: '520935523382',
    projectId: 'agroskypea',
    databaseURL: 'https://agroskypea-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'agroskypea.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCfpSQ-mla8uih-8gR7rHAz6yuYJ_hIg5Y',
    appId: '1:520935523382:ios:253add27707d851450c497',
    messagingSenderId: '520935523382',
    projectId: 'agroskypea',
    databaseURL: 'https://agroskypea-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'agroskypea.appspot.com',
    iosBundleId: 'id.grounded.agrosky.agrosky',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCfpSQ-mla8uih-8gR7rHAz6yuYJ_hIg5Y',
    appId: '1:520935523382:ios:d886b5bf6b4103ca50c497',
    messagingSenderId: '520935523382',
    projectId: 'agroskypea',
    databaseURL: 'https://agroskypea-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'agroskypea.appspot.com',
    iosBundleId: 'id.grounded.agrosky.agrosky.RunnerTests',
  );
}
