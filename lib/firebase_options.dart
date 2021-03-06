// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCD1z2YdqE8iIaB3Ase8MnaABZjpahG_yo',
    appId: '1:648048020779:android:7b2ee93826c0de3553c96e',
    messagingSenderId: '648048020779',
    projectId: 'cli-test-6ba76',
    storageBucket: 'cli-test-6ba76.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCrkUuOvB70qHWWeK-6PShEHHb22MgY8Ng',
    appId: '1:648048020779:ios:463f9d2b19a85cbd53c96e',
    messagingSenderId: '648048020779',
    projectId: 'cli-test-6ba76',
    storageBucket: 'cli-test-6ba76.appspot.com',
    iosClientId: '648048020779-3g2nab98kgp3cngi2460blipkm97siuu.apps.googleusercontent.com',
    iosBundleId: 'com.example.cliTest',
  );
}
