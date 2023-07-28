import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IngredientScreen extends StatefulWidget {
  const IngredientScreen({super.key});

  @override
  State<IngredientScreen> createState() => _IngredientScreenState();
}

final TextEditingController ingredientEditingController =
    TextEditingController();

final TextEditingController stockValueEditingController =
    TextEditingController();
final TextEditingController notesEditingController = TextEditingController();

bool upDated = false;
String text = '';

bool selctedcolour = true;

class _IngredientScreenState extends State<IngredientScreen> {
  @override
  void initState() {
    super.initState();
    stockValueEditingController.addListener(_updateButtonStatus);
  }

  @override
  void dispose() {
    stockValueEditingController.dispose();
    super.dispose();
  }

  void _updateButtonStatus() {
    setState(() {
      upDated = stockValueEditingController.text.isNotEmpty;
      text = stockValueEditingController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: const Color(0xff5654a2),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Image.asset(
            'assets/images/close.png',
            width: 18,
            height: 18,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'ADD INGREDIENT ',
          style: TextStyle(
            color: Color(0xffffffff),
            fontSize: 18,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Add',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(
                    Icons.check_circle,
                    color: Colors.white,
                    size: 25,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              '   Details',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      offset: const Offset(0, 2),
                      blurRadius: 4,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                width: width,
                height: height / 14,
                child: Padding(
                  padding: const EdgeInsets.only(top: 12, left: 12),
                  child: TextField(
                    controller: ingredientEditingController,
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
                      contentPadding:
                          const EdgeInsets.only(top: 10, bottom: 10),
                      label: const Text(
                        'Name',
                        style: TextStyle(
                          color: Color(0xFF979797),
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      hintText: 'Ex: Bun, Egg or Box',
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              '   Stock',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: height / 14,
              width: width,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          selctedcolour = true;
                        });
                      },
                      child: Container(
                        width: width / 2.12,
                        height: height / 14,
                        decoration: BoxDecoration(
                          color: selctedcolour == true
                              ? Colors.green
                              : Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            'ADD STOCK(+)',
                            style: TextStyle(
                              color: selctedcolour == true
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selctedcolour = false;
                        });
                      },
                      child: Container(
                        width: width / 2.12,
                        decoration: BoxDecoration(
                          color: selctedcolour == false
                              ? Colors.red
                              : Colors.white,
                        ),
                        child: Container(
                          width: width / 2.12,
                          height: height / 14,
                          decoration: BoxDecoration(
                            color: selctedcolour == false
                                ? Colors.red
                                : Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              'REMOVE STOCK(-)',
                              style: TextStyle(
                                color: selctedcolour == false
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 2),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            offset: const Offset(0, 2),
                            blurRadius: 4,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      width: width,
                      height: height / 9,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Current Stock',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '0',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 2, right: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            offset: const Offset(0, 2),
                            blurRadius: 4,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      width: width,
                      height: height / 9,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'Updated Stock',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          if (selctedcolour == true)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  upDated == false ? "-" : text,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff5654a2),
                                  ),
                                ),
                              ],
                            ),
                          if (selctedcolour == false)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  upDated == false ? "-" : '-$text',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff5654a2),
                                  ),
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      offset: const Offset(0, 2),
                      blurRadius: 4,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                width: width,
                height: height / 14,
                child: Padding(
                  padding: const EdgeInsets.only(top: 12, left: 12),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    textAlign: TextAlign.center,
                    controller: stockValueEditingController,
                    cursorColor: const Color(0xff5654a2),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
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
                      contentPadding:
                          const EdgeInsets.only(top: 10, bottom: 10),
                      hintText: 'Enter Stock Value',
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 16),
                      prefixIcon: selctedcolour == true
                          ? const Icon(
                              CupertinoIcons.plus,
                              color: Colors.green,
                            )
                          : const Icon(
                              CupertinoIcons.minus,
                              color: Colors.red,
                            ),
                    ),
                  ),
                ),
              ),
            ),
            if (upDated == true)
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        offset: const Offset(0, 2),
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  width: width,
                  height: height / 14,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12, left: 12),
                    child: TextField(
                      controller: notesEditingController,
                      cursorColor: const Color(0xff5654a2),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
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
                        contentPadding:
                            const EdgeInsets.only(top: 10, bottom: 10),
                        hintText: selctedcolour == true
                            ? 'Add Notes(+$text.0 Stock)'
                            : 'Add Notes(-$text.0 Stock)',
                        hintStyle:
                            const TextStyle(color: Colors.grey, fontSize: 16),
                      ),
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
