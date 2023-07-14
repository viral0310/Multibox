import 'dart:async';

import 'package:flutter/material.dart';

import '../utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed('/OnBording');
    });
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390.0000915527;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 926 * fem,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20 * fem),
          gradient: const LinearGradient(
            begin: Alignment(-1, -1),
            end: Alignment(1, 1),
            colors: <Color>[
              Color(0xffa164a9),
              Color(0xff7c54a2),
              Color(0xff5654a2)
            ],
            stops: <double>[0, 0.5, 1],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  child: Image.asset("assets/images/S.png"),
                ),
              ),
            ),
            Positioned(
              left: 139 * fem,
              top: 368 * fem,
              child: Align(
                child: SizedBox(
                  width: 198 * fem,
                  height: 65 * fem,
                  child: Text(
                    'MultiBox',
                    style: SafeGoogleFont(
                      'Nunito',
                      fontSize: 47 * ffem,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 84.2483520508 * fem,
              top: 399.9609375 * fem,
              child: Align(
                child: SizedBox(
                  width: 156.5 * fem,
                  height: 125.08 * fem,
                  child: Image.asset(
                    "assets/images/shopping-logo 1.png",
                    width: 156.5 * fem,
                    height: 125.08 * fem,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
