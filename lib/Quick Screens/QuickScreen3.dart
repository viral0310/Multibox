import 'package:flutter/material.dart';

import '../utils.dart';

class QuickScreen3 extends StatefulWidget {
  const QuickScreen3({super.key});

  @override
  State<QuickScreen3> createState() => _QuickScreen3State();
}

class _QuickScreen3State extends State<QuickScreen3> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    double baseWidth = 390.0000915527;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: width,
            height: height / 4,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(-1, -1),
                end: Alignment(1, 1),
                colors: <Color>[
                  Color(0xffa164a9),
                  Color(0xffa164a9),
                  Color(0xff7c54a2),
                  Color(0xff5654a2)
                ],
                stops: <double>[0, 0, 0.484, 1],
              ),
            ),
            child: Container(
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 0 * fem, 90 * fem, 26.75 * fem),
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Let's create an item",
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 2.1041666667 * ffem / fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                    Text(
                      "Enter your item details",
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 2.1041666667 * ffem / fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
