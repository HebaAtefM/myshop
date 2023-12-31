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
    apiKey: 'AIzaSyArHq5LEvDwjAv_aMoo5sTwlA34cNdCw9g',
    appId: '1:37106244777:web:45f6ab1538fda939575db8',
    messagingSenderId: '37106244777',
    projectId: 'rozy-food',
    authDomain: 'rozy-food.firebaseapp.com',
    storageBucket: 'rozy-food.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyChEad4QEc4Wv46TuLzRWlx4rLfcZHfShs',
    appId: '1:37106244777:android:b56163791dd4ce75575db8',
    messagingSenderId: '37106244777',
    projectId: 'rozy-food',
    storageBucket: 'rozy-food.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyChXnlr2NYck2ms_7B63Hgpc-gmwnX_88c',
    appId: '1:37106244777:ios:3cdc488180d2e471575db8',
    messagingSenderId: '37106244777',
    projectId: 'rozy-food',
    storageBucket: 'rozy-food.appspot.com',
    iosClientId: '37106244777-5ovnl24ernf4n5mfu7n96ituj84g0k98.apps.googleusercontent.com',
    iosBundleId: 'com.example.rozyRestraunt',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyChXnlr2NYck2ms_7B63Hgpc-gmwnX_88c',
    appId: '1:37106244777:ios:3cdc488180d2e471575db8',
    messagingSenderId: '37106244777',
    projectId: 'rozy-food',
    storageBucket: 'rozy-food.appspot.com',
    iosClientId: '37106244777-5ovnl24ernf4n5mfu7n96ituj84g0k98.apps.googleusercontent.com',
    iosBundleId: 'com.example.rozyRestraunt',
  );
}
