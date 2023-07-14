import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chips_choice/chips_choice.dart';
import '../utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    List<String> tags = [];
    List<String> options = [
      'Retail',
      'Wholesale',
      'Restaurant',
      'Trader',
      'Fast Food',
      'Service',
      'Other',
    ];
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
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 60 * fem, 350 * fem, 30 * fem),
                  width: 15.15 * fem,
                  height: 25 * fem,
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 0 * fem, 90 * fem, 26.75 * fem),
                  child: Text(
                    'Tell us about your business',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 18 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 2.1041666667 * ffem / fem,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
                Container(
                  height: 32,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xff5654a2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text(
                          'Already have an invitation? Join as staff',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 13 * ffem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
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
                    'Business Name',
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
                    value: _isChecked,
                    onChanged: (value) {
                      setState(() {
                        _isChecked = value!;
                      });
                    },
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
            height: height / 4,
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
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '    Business Type',
                    style: TextStyle(
                      color: Color(0xFF979797),
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ChipsChoice<String>.multiple(
                    value: tags,
                    onChanged: (val) => setState(() => tags = val),
                    choiceItems: C2Choice.listFrom<String, String>(
                      source: options,
                      value: (i, v) => v,
                      label: (i, v) => v,
                      tooltip: (i, v) => v,
                      style: (i, v) {
                        if (['Other', 'Trader', 'Restaurant'].contains(v)) {
                          return C2ChipStyle.toned(
                            backgroundColor: Colors.purple,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(5),
                            ),
                          );
                        }
                        return null;
                      },
                    ),
                    choiceStyle: C2ChipStyle.filled(),
                    wrapped: true,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
