import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:multi_purpose_app/Quick%20Screens/QuickScreen2.dart';
import 'package:multi_purpose_app/Screen/Login/LoginScreen.dart';

import 'Quick Screens/QuickScreen1.dart';
import 'Quick Screens/QuickScreen3.dart';
import 'Screen/Login/RegisterScreen.dart';
import 'Screen/Login/VerifyScreen.dart';
import 'Screen/Splashscreen.dart';
import 'Screen/on bording 1/OnBordingScreen1.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    GetMaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0x005654a2),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/OnBording': (context) => const OnBordingScreen(),
        '/Register': (context) => const RegisterScreen(),
        '/Login': (context) => const LoginScreen(),
        '/Verify': (context) => const VerifyScreen(),
        '/QuickScreen': (context) => const QuickScreen(),
        '/QuickScreen2': (context) => const QuickScreen2(),
        '/QuickScreen3': (context) => const QuickScreen3(),
      },
    ),
  );
}
