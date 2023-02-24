
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flavor/app.dart';
import 'package:flutter_flavor/app_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: FirebaseOptions(apiKey: 'AIzaSyAwezOxcBUYadYWHaw9Vlxb1Eb0oaffvJE',
          appId: '1:1014692693453:android:f76dce8fca0478d413f084', messagingSenderId: '1014692693453', projectId: 'flavor-test1')
  );
  AppConfig devAppConfig = AppConfig(appName: 'CounterApp Dev', flavor: 'dev');

  Widget app = await initializeApp(devAppConfig);

  runApp(app);
}
/*
flutter run -t lib/main_dev.dart  --flavor=dev
# Debug signing configuration + dev flavor
flutter run -t lib/main_dev.dart  --debug --flavor=dev
flutter run -t lib/main_dev.dart  --release --flavor=dev
flutter build appbundle -t lib/main_dev.dart  --flavor=dev
flutter build apk -t lib/main_dev.dart  --flavor=dev
*/
