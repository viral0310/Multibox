import 'package:flutter/material.dart';

import '../utils.dart';

class QuickScreen2 extends StatefulWidget {
  const QuickScreen2({super.key});

  @override
  State<QuickScreen2> createState() => _QuickScreen2State();
}

class _QuickScreen2State extends State<QuickScreen2> {
  final TextEditingController countryEditingController =
      TextEditingController();
  final TextEditingController timezoneEditingController =
      TextEditingController();
  final TextEditingController currencyEditingController =
      TextEditingController();

  bool _isButtonEnabled = false;
  bool _isButton2Enabled = false;

  bool _isButton3Enabled = false;

  @override
  void initState() {
    super.initState();
    countryEditingController.addListener(_updateButtonStatus);
    timezoneEditingController.addListener(_updateButton2Status);
    currencyEditingController.addListener(_updateButton3Status);
  }

  @override
  void dispose() {
    countryEditingController.dispose();
    timezoneEditingController.dispose();
    currencyEditingController.dispose();
    super.dispose();
  }

  void _updateButtonStatus() {
    setState(() {
      _isButtonEnabled = countryEditingController.text.isNotEmpty;
    });
  }

  void _updateButton2Status() {
    setState(() {
      _isButton2Enabled = timezoneEditingController.text.isNotEmpty;
    });
  }

  void _updateButton3Status() {
    setState(() {
      _isButton3Enabled = currencyEditingController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    double baseWidth = 390.0000915527;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                margin: EdgeInsets.fromLTRB(
                    0 * fem, 0 * fem, 90 * fem, 26.75 * fem),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Your business location',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 18 * ffem,
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
            const SizedBox(
              height: 25,
            ),
            Container(
              width: width / 1.08,
              height: height / 12,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 2, // Spread radius
                    blurRadius: 5, // Blur radius
                    offset: const Offset(0, 3), // Offset in x and y direction
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: TextField(
                  controller: countryEditingController,
                  cursorColor: const Color(0xff5654a2),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    label: const Text(
                      'Country',
                      style: TextStyle(
                        color: Color(0xFF979797),
                        fontSize: 18,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    prefixIcon: Checkbox(
                      shape: const CircleBorder(),
                      fillColor: MaterialStateProperty.all(
                        const Color(0xff5654a2),
                      ),
                      value: _isButtonEnabled,
                      onChanged: (value) {},
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: width / 1.08,
              height: height / 12,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 2, // Spread radius
                    blurRadius: 5, // Blur radius
                    offset: const Offset(0, 3), // Offset in x and y direction
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: TextField(
                  controller: timezoneEditingController,
                  cursorColor: const Color(0xff5654a2),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    label: const Text(
                      'TimeZone',
                      style: TextStyle(
                        color: Color(0xFF979797),
                        fontSize: 18,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    prefixIcon: Checkbox(
                      shape: const CircleBorder(),
                      fillColor: MaterialStateProperty.all(
                        const Color(0xff5654a2),
                      ),
                      value: _isButton2Enabled,
                      onChanged: (value) {},
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: width / 1.08,
              height: height / 12,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 2, // Spread radius
                    blurRadius: 5, // Blur radius
                    offset: const Offset(0, 3), // Offset in x and y direction
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: TextField(
                  controller: currencyEditingController,
                  cursorColor: const Color(0xff5654a2),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    label: const Text(
                      'Currency',
                      style: TextStyle(
                        color: Color(0xFF979797),
                        fontSize: 18,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    prefixIcon: Checkbox(
                      shape: const CircleBorder(),
                      fillColor: MaterialStateProperty.all(
                        const Color(0xff5654a2),
                      ),
                      value: _isButton3Enabled,
                      onChanged: (value) {},
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 256,
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff5654a2),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed('/HomeScreen');
                        },
                        child: const Text('Continue'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
