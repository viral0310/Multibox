import 'package:flutter/material.dart';

import '../../utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

bool _isButtonEnabled = true;

class _LoginScreenState extends State<LoginScreen> {
  void toggleButtonState() {
    setState(() {
      _isButtonEnabled = !_isButtonEnabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390.0000915527;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(20 * fem),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(
                      20 * fem, 131 * fem, 20 * fem, 20 * fem),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/login bg 1.png',
                      ),
                      opacity: 99,
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: SafeGoogleFont(
                      'Nunito',
                      fontSize: 40 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.3625 * ffem / fem,
                      letterSpacing: 0.8 * fem,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(
                      20 * fem, 30 * fem, 20 * fem, 40 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 20 * fem),
                        width: double.infinity,
                        height: 332 * fem,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 35),
                              child: TextField(
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                ),
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  // border: OutlineInputBorder(
                                  //   borderSide:
                                  //       const BorderSide(color: Colors.grey),
                                  //   borderRadius: BorderRadius.circular(8.0),
                                  // ),
                                  //alignLabelWithHint: true,
                                  focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  label: const Text(
                                    'Email Or Phone',
                                    style: TextStyle(
                                      color: Color(0xff5654a2),
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  hintText: 'Enter Email Or Phone',
                                  suffixIcon: const Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 25),
                              child: TextField(
                                obscureText: _isButtonEnabled,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                ),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    borderSide:
                                        const BorderSide(color: Colors.grey),
                                  ),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  suffix: GestureDetector(
                                    onTap: () {
                                      toggleButtonState();
                                    },
                                    child: const Icon(
                                      fill: 1.0,
                                      Icons.remove_red_eye_outlined,
                                      color: Color(0xff5654a2),
                                      size: 16,
                                    ),
                                  ),
                                  label: const Text(
                                    'Password',
                                    style: TextStyle(
                                      color: Color(0xff5654a2),
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  hintText: 'Enter Password',
                                  suffixIcon: const Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 25),
                              child: Row(
                                children: [
                                  CircularCheckBox(),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Remember Me',
                                    style: SafeGoogleFont(
                                      'Nunito',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.3625 * ffem / fem,
                                      letterSpacing: 0.36 * fem,
                                      color: const Color(0xff5654a2),
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    'Forgot Password',
                                    style: SafeGoogleFont(
                                      'Nunito',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.3625 * ffem / fem,
                                      letterSpacing: 0.36 * fem,
                                      color: const Color(0xffE8504D),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacementNamed('/Verify');
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              20 * fem, 0 * fem, 20 * fem, 30 * fem),
                          width: double.infinity,
                          height: 51 * fem,
                          decoration: BoxDecoration(
                            color: const Color(0xff5654a2),
                            borderRadius: BorderRadius.circular(5 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Login',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Nunito',
                                fontSize: 20 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.3625 * ffem / fem,
                                letterSpacing: 0.4 * fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            33 * fem, 0 * fem, 33 * fem, 30 * fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 100 * fem,
                            ),
                            Text(
                              'Social Login',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Nunito',
                                fontSize: 18 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.3625 * ffem / fem,
                                color: const Color(0xff5654a2),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              10 * fem, 0 * fem, 0 * fem, 20 * fem),
                          width: double.infinity,
                          height: 48 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(
                                    37 * fem, 14 * fem, 38 * fem, 11 * fem),
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xff5654a2),
                                  borderRadius: BorderRadius.circular(5 * fem),
                                ),
                                child: Center(
                                  child: SizedBox(
                                    width: 23 * fem,
                                    height: 23 * fem,
                                    child: Image.asset(
                                      'assets/images/google.png',
                                      width: 23 * fem,
                                      height: 23 * fem,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20 * fem,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(
                                      43 * fem, 13 * fem, 43 * fem, 11 * fem),
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff5654a2),
                                    borderRadius:
                                        BorderRadius.circular(5 * fem),
                                  ),
                                  child: Center(
                                    child: SizedBox(
                                      width: 12 * fem,
                                      height: 24 * fem,
                                      child: Image.asset(
                                        'assets/images/facebook.png',
                                        width: 12 * fem,
                                        height: 24 * fem,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20 * fem,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(38 * fem,
                                      11 * fem, 38.87 * fem, 10 * fem),
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff5654a2),
                                    borderRadius:
                                        BorderRadius.circular(5 * fem),
                                  ),
                                  child: Center(
                                    child: SizedBox(
                                      width: 21.13 * fem,
                                      height: 20 * fem,
                                      child: Image.asset(
                                        'assets/images/apple.png',
                                        width: 21.13 * fem,
                                        height: 27 * fem,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don’t have an account? ',
                            style: SafeGoogleFont(
                              'Nunito',
                              fontSize: 18 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.3625 * ffem / fem,
                              letterSpacing: 0.36 * fem,
                              color: const Color(0xff7f7f7f),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .pushReplacementNamed('/Register');
                            },
                            child: Text(
                              'Register',
                              style: SafeGoogleFont(
                                'Nunito',
                                fontSize: 18 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.3625 * ffem / fem,
                                letterSpacing: 0.36 * fem,
                                color: const Color(0xff5654a2),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CircularCheckBox extends StatefulWidget {
  @override
  _CircularCheckBoxState createState() => _CircularCheckBoxState();
}

class _CircularCheckBoxState extends State<CircularCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(
            color: const Color(0xff5654a2), // Border color of the checkbox
            width: 2, // Border width of the checkbox
          ),
        ),
        child: isChecked
            ? const Icon(
                Icons.check, weight: 30,
                size: 15,
                color: Color(0xff5654a2), // Checkmark color
              )
            : null,
      ),
    );
  }
}
