import 'package:flutter/material.dart';

import '../Screen/HomeScreens/DrawerScreens.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      drawer: const DrawerScreen(),
      appBar: AppBar(
        backgroundColor: const Color(0xff5654a2),
        title: const Text(
          "Counter",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
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
              height: height / 5.4,
              child: Column(
                children: [
                  const ListTile(
                    title: Text(
                      "Pan",
                      style: TextStyle(fontSize: 18),
                    ),
                    subtitle: Row(
                      children: [
                        Text(
                          '1 × ',
                          style: TextStyle(fontSize: 14, color: Colors.green),
                        ),
                        Text(
                          '100',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                        Spacer(),
                        Text(
                          '100',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    width: width,
                    color: Colors.black,
                  ),
                  const ListTile(
                    title: Text(
                      "Pan",
                      style: TextStyle(fontSize: 18),
                    ),
                    subtitle: Row(
                      children: [
                        Text(
                          '1 × ',
                          style: TextStyle(fontSize: 14, color: Colors.green),
                        ),
                        Text(
                          '100',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                        Spacer(),
                        Text(
                          '100',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
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
              height: height / 13,
              child: const Center(
                child: Text(
                  'ADD NEW ITEM',
                  style: TextStyle(color: Color(0xff5654a2), fontSize: 20),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
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
              height: height / 5.5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Subtotal',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Spacer(),
                        Text(
                          '200',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 1,
                      width: width,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        Text(
                          'Grand Total',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        Spacer(),
                        Text(
                          'INR200.00',
                          style: TextStyle(
                              color: Color(0xff5654a2),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text(
                          'ADD TAX',
                          style: TextStyle(
                            color: Color(0xff5654a2),
                            fontSize: 14,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '2 ITEMS | 2 UNITS',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text(
                          'ADD DISCOUNT',
                          style: TextStyle(
                            color: Color(0xff5654a2),
                            fontSize: 14,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'ADD OTHER CHARGE',
                          style: TextStyle(
                            color: Color(0xff5654a2),
                            fontSize: 14,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          )
          /*Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/ItemScreen');
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(0, 2),
                      blurRadius: 4,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/ItemScreen');
                      },
                      icon: const Icon(
                        CupertinoIcons.plus_circle_fill,
                        size: 35,
                        color: Color(0xffa164a9),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'NEW SALE',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Pending Sale (Park) : 0',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff5654a2),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'No Pending Sales',
            style: TextStyle(
              fontSize: 13,
              color: Color(0xff000000),
            ),
          ),*/
        ],
      ),
    );
  }
}
