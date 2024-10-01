import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pasal/firebase_options.dart';
import 'app.dart';
import 'package:firebase_core/firebase_core.dart';

// entry point
Future<void> main() async {
//  widgets binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
//  local storage
  await GetStorage.init();
// Await Native Splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
// todo: init django api

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
// todo: auth

  runApp(const App());
}
