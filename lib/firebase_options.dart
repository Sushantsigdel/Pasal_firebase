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
    apiKey: 'AIzaSyCENap1lN2AJ1gff2OJiKu3e5I4irZkf_c',
    appId: '1:845460618825:web:b083e844ab3fbabdc28998',
    messagingSenderId: '845460618825',
    projectId: 'pasal-firebase',
    authDomain: 'pasal-firebase.firebaseapp.com',
    storageBucket: 'pasal-firebase.appspot.com',
    measurementId: 'G-4P51ML4H65',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB6_IkG92CDfR8g_t9cCaKBvhmHBascMtY',
    appId: '1:845460618825:android:8d48ef2048219851c28998',
    messagingSenderId: '845460618825',
    projectId: 'pasal-firebase',
    storageBucket: 'pasal-firebase.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCKE-hF0QPNIi3w3dkyM-iuokdbRWmHnXA',
    appId: '1:845460618825:ios:10494bab9f2d56efc28998',
    messagingSenderId: '845460618825',
    projectId: 'pasal-firebase',
    storageBucket: 'pasal-firebase.appspot.com',
    iosBundleId: 'com.example.pasal',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCKE-hF0QPNIi3w3dkyM-iuokdbRWmHnXA',
    appId: '1:845460618825:ios:10494bab9f2d56efc28998',
    messagingSenderId: '845460618825',
    projectId: 'pasal-firebase',
    storageBucket: 'pasal-firebase.appspot.com',
    iosBundleId: 'com.example.pasal',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCENap1lN2AJ1gff2OJiKu3e5I4irZkf_c',
    appId: '1:845460618825:web:b1d69747f1214064c28998',
    messagingSenderId: '845460618825',
    projectId: 'pasal-firebase',
    authDomain: 'pasal-firebase.firebaseapp.com',
    storageBucket: 'pasal-firebase.appspot.com',
    measurementId: 'G-FL61THYVWG',
  );
}
