
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flavor/app.dart';
import 'package:flutter_flavor/app_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(apiKey: 'AIzaSyCBzbhad3ipkpnB94yaZwrw-YpZQaYUTRA',
          appId: '1:7510780964:android:2c6f46adc9cfa743e93cb1', messagingSenderId: '7510780964', projectId: 'flavor-test-4354e')
  );
  AppConfig devAppConfig =
  AppConfig(appName: 'CounterApp Prod', flavor: 'prod');
  Widget app = await initializeApp(devAppConfig);
  runApp(app);
}

/*
flutter run -t lib/main_prod.dart  --release --flavor=prod
flutter build appbundle -t lib/main_prod.dart  --flavor=prod
flutter build apk -t lib/main_prod.dart  --flavor=prod
*/
