import 'package:flutter/material.dart';

import '../DrawerScreens.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: const DrawerScreen(),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.qr_code_scanner,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
            ),
          ),
        ],
        title: const Text(
          'Checkout',
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
        backgroundColor: const Color(0xff5654a2),
      ),
      body: Container(
        width: width,
        height: height,
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      showAlertDialog(context);
                    },
                    child: Container(
                      height: 40,
                      width: 220,
                      decoration: BoxDecoration(
                          color: const Color(0xffcdcde5),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Text(
                          'Quick Sales',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 40,
                    width: 110,
                    decoration: BoxDecoration(
                        color: const Color(0xffcdcde5),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        'Discount',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

void showAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Quick Sales'),
                const SizedBox(
                  width: 40,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.check),
                ),
              ],
            ),
            const Divider(
              thickness: 2,
              color: Colors.black,
            ),
          ],
        ),
        content: SizedBox(
          height: MediaQuery.of(context).size.height / 5,
          child: Column(
            children: [
              const TextField(
                keyboardType: TextInputType.name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  hintText: 'Description',
                ),
              ),
              Row(
                children: [
                  const Text(
                    '₹',
                    style: TextStyle(color: Color(0xff5654a2)),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                          ),
                          hintText: 'Price',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Column(
                        children: [
                          const TextField(
                            keyboardType: TextInputType.phone,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: InputDecoration(
                              disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 1.0),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 1.0),
                              ),
                              hintText: 'Quantity',
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  'Qty ',
                                  style: TextStyle(
                                      color: Color(0xff5654a2), fontSize: 14),
                                ),
                              ),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                            ),
                          ),
                          Container(
                            width: 130,
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 0.50,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFF979797),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
