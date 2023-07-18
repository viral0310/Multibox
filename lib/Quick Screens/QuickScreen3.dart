import 'package:flutter/material.dart';

import '../utils.dart';

final TextEditingController itemnameEditingController = TextEditingController();
final TextEditingController itemcategoryEditingController =
    TextEditingController();
final TextEditingController itempriceEditingController =
    TextEditingController();

class QuickScreen3 extends StatefulWidget {
  const QuickScreen3({super.key});

  @override
  State<QuickScreen3> createState() => _QuickScreen3State();
}

class _QuickScreen3State extends State<QuickScreen3> {
  String selectedOption = 'Option 1';

  void _onOptionChanged(String newValue) {
    setState(() {
      selectedOption = newValue;
    });
  }

  bool _isButtonEnabled = false;
  bool _isButton2Enabled = false;

  bool _isButton3Enabled = false;

  @override
  void initState() {
    super.initState();
    itemnameEditingController.addListener(_updateButtonStatus);
    itemcategoryEditingController.addListener(_updateButton2Status);
    itempriceEditingController.addListener(_updateButton3Status);
  }

  @override
  void dispose() {
    itemnameEditingController.dispose();
    itemcategoryEditingController.dispose();
    itempriceEditingController.dispose();
    super.dispose();
  }

  void _updateButtonStatus() {
    setState(() {
      _isButtonEnabled = itemnameEditingController.text.isNotEmpty;
    });
  }

  void _updateButton2Status() {
    setState(() {
      _isButton2Enabled = itemcategoryEditingController.text.isNotEmpty;
    });
  }

  void _updateButton3Status() {
    setState(() {
      _isButton3Enabled = itempriceEditingController.text.isNotEmpty;
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
            const SizedBox(
              height: 25,
            ),
            Container(
              width: width / 1.08,
              height: height / 4.8,
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
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: TextField(
                      controller: itemnameEditingController,
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
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        label: const Text(
                          'Item Name',
                          style: TextStyle(
                            color: Color(0xFF979797),
                            fontSize: 18,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        hintText: 'Apple',
                        hintStyle: const TextStyle(
                          color: Color(0xFF979797),
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
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
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: TextField(
                      controller: itemcategoryEditingController,
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
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        label: const Text(
                          'Item Category',
                          style: TextStyle(
                            color: Color(0xFF979797),
                            fontSize: 18,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        hintText: 'Fruits',
                        hintStyle: const TextStyle(
                          color: Color(0xFF979797),
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
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
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: width / 1.08,
              height: height / 11,
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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: RadioListTile(
                      activeColor: const Color(0xff5654a2),
                      title: const Text(
                        "Sell by units",
                        style: TextStyle(fontSize: 14),
                      ),
                      subtitle: const Text(
                        "eg 1,2, 100",
                        style: TextStyle(fontSize: 14),
                      ),
                      value: 'Option 1',
                      groupValue: selectedOption,
                      onChanged: (v) => _onOptionChanged(v!),
                    ),
                  ),
                  Expanded(
                    child: RadioListTile(
                      activeColor: const Color(0xff5654a2),
                      title: const Text(
                        "Sell by fraction",
                        style: TextStyle(fontSize: 14),
                      ),
                      subtitle: const Text(
                        "eg 0.100kg,0.500kg",
                        style: TextStyle(fontSize: 14),
                      ),
                      value: 'Option 2',
                      groupValue: selectedOption,
                      onChanged: (v) => _onOptionChanged(v!),
                    ),
                  ),
                ],
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
                  keyboardType: TextInputType.number,
                  controller: itempriceEditingController,
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
                      'Item Price',
                      style: TextStyle(
                        color: Color(0xFF979797),
                        fontSize: 18,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    hintText: '100',
                    hintStyle: const TextStyle(
                      color: Color(0xFF979797),
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
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
              height: 105,
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
                        onPressed: () {},
                        child: const Text('Create my first item!'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 45,
                width: width,
                child: const Text(
                  'Skip',
                  style: TextStyle(
                    color: Color(0xFF979797),
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
