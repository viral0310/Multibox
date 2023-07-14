import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_purpose_app/Screen/Login/LoginScreen.dart';

import 'Screen/HomePage.dart';
import 'Screen/Login/RegisterScreen.dart';
import 'Screen/Login/VerifyScreen.dart';
import 'Screen/Splashscreen.dart';
import 'Screen/on bording 1/OnBordingScreen1.dart';

void main() {
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
        '/HomePage': (context) => const HomePage(),
      },
    ),
  );
}
