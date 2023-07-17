import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils.dart';

class QuickScreen extends StatefulWidget {
  const QuickScreen({super.key});

  @override
  State<QuickScreen> createState() => _QuickScreenState();
}

class _QuickScreenState extends State<QuickScreen> {
  final TextEditingController textEditingController = TextEditingController();

  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    textEditingController.addListener(_updateButtonStatus);
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  void _updateButtonStatus() {
    setState(() {
      _isButtonEnabled = textEditingController.text.isNotEmpty;
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
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
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
                  controller: textEditingController,
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
                    CustomChipExample(),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 220,
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
                              .pushReplacementNamed('/QuickScreen2');
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

class CustomChipExample extends StatefulWidget {
  @override
  _CustomChipExampleState createState() => _CustomChipExampleState();
}

class _CustomChipExampleState extends State<CustomChipExample> {
  List<String> selectedChips = [];

  void _onChipSelected(String chipText) {
    setState(() {
      if (selectedChips.contains(chipText)) {
        selectedChips.remove(chipText);
      } else {
        selectedChips.add(chipText);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> availableChips = [
      'Retail',
      'Wholesale',
      'Restaurant',
      'Trader',
      'Fast Food',
      'Service',
      'Other',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Wrap(
            spacing: 10,
            alignment: WrapAlignment.start,
            runSpacing: 10,
            children: availableChips.map((chipText) {
              return CustomChip(
                text: chipText,
                isSelected: selectedChips.contains(chipText),
                onTap: () => _onChipSelected(chipText),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

class CustomChip extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback? onTap;
  final VoidCallback? onDeleted;

  CustomChip({
    required this.text,
    this.isSelected = false,
    this.onTap,
    this.onDeleted,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xff5654a2) : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (onDeleted != null)
              const SizedBox(
                width: 4,
              ),
            if (onDeleted != null)
              GestureDetector(
                onTap: onDeleted,
                child: const Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 16,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
