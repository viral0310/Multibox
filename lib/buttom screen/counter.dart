import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Screen/HomeScreens/DrawerScreens.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

bool gift = false;
bool free = false;

class _CounterScreenState extends State<CounterScreen> {
  int itemCount = 1;

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
              width: width,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
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
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        useSafeArea: true,
                        context: context,
                        builder: (c) {
                          return StatefulBuilder(
                            builder: (BuildContext context, setSState) =>
                                Container(
                              color: Colors.grey.shade300,
                              child: Column(
                                children: [
                                  Container(
                                    height: height / 17,
                                    width: width,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(6),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          offset: const Offset(0, 2),
                                          blurRadius: 4,
                                          spreadRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: const ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                              Colors.red,
                                            ),
                                          ),
                                          child: const Text(
                                            'REMOVE',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          'PAN',
                                          style: TextStyle(
                                            color: Color(0xff5654a2),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20,
                                          ),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: const ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                              Colors.green,
                                            ),
                                          ),
                                          child: const Text(
                                            'UPDATE',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Container(
                                      width: width,
                                      height: height / 15,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(6),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            offset: const Offset(0, 2),
                                            blurRadius: 4,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              if (itemCount > 0) {
                                                setSState(() {
                                                  itemCount = itemCount - 1;
                                                });
                                              }
                                            },
                                            icon: const Icon(
                                              CupertinoIcons.minus,
                                              color: Color(0xff5654a2),
                                              size: 25,
                                            ),
                                          ),
                                          Container(
                                            height: 30,
                                            width: 80,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xff5654a2),
                                              ),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(5),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text('$itemCount'),
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              setSState(() {
                                                itemCount = itemCount + 1;
                                              });
                                            },
                                            icon: const Icon(
                                              CupertinoIcons.plus,
                                              color: Color(0xff5654a2),
                                              size: 25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Container(
                                      width: width,
                                      height: height / 13,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(6),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            offset: const Offset(0, 2),
                                            blurRadius: 4,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      child: const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            'Enter Price',
                                            style: TextStyle(
                                              color: Color(0xff5654a2),
                                            ),
                                          ),
                                          Text(
                                            '100',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Container(
                                      width: width,
                                      height: height / 17,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(6),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            offset: const Offset(0, 2),
                                            blurRadius: 4,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 28, right: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  'Discount(%)',
                                                  style: TextStyle(
                                                    color: Color(0xff5654a2),
                                                  ),
                                                ),
                                                Text(
                                                  '0%',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 18,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            TextButton(
                                              onPressed: () {},
                                              child: const Text(
                                                'RESET',
                                                style: TextStyle(
                                                    color: Colors.red),
                                              ),
                                            ),
                                            const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  'Discount Per Item',
                                                  style: TextStyle(
                                                    color: Color(0xff5654a2),
                                                  ),
                                                ),
                                                Text(
                                                  '0.00',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 18,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Container(
                                      width: width,
                                      height: height / 13,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(6),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            offset: const Offset(0, 2),
                                            blurRadius: 4,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          const Text(
                                            'Free or Gift (Price 0)',
                                            style: TextStyle(
                                              color: Color(0xff5654a2),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Row(
                                                children: [
                                                  Checkbox(
                                                    activeColor:
                                                        const Color(0xff5654a2),
                                                    value: free,
                                                    onChanged: (value) {
                                                      setSState(() {
                                                        free = value!;
                                                      });
                                                    },
                                                  ),
                                                  const Text(
                                                    'Give as Free',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Checkbox(
                                                    activeColor:
                                                        const Color(0xff5654a2),
                                                    value: gift,
                                                    onChanged: (value) {
                                                      setSState(() {
                                                        gift = value!;
                                                      });
                                                    },
                                                  ),
                                                  const Text(
                                                    'Give as Gift',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: const ListTile(
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
                  ),
                  Container(
                    height: 1,
                    width: width,
                    color: Colors.black,
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        useSafeArea: true,
                        context: context,
                        builder: (c) {
                          return StatefulBuilder(
                            builder: (BuildContext context, setSState) =>
                                Container(
                              color: Colors.grey.shade300,
                              child: Column(
                                children: [
                                  Container(
                                    height: height / 17,
                                    width: width,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(6),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          offset: const Offset(0, 2),
                                          blurRadius: 4,
                                          spreadRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: const ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                              Colors.red,
                                            ),
                                          ),
                                          child: const Text(
                                            'REMOVE',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          'PAN',
                                          style: TextStyle(
                                            color: Color(0xff5654a2),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20,
                                          ),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: const ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                              Colors.green,
                                            ),
                                          ),
                                          child: const Text(
                                            'UPDATE',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Container(
                                      width: width,
                                      height: height / 15,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(6),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            offset: const Offset(0, 2),
                                            blurRadius: 4,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              if (itemCount > 0) {
                                                setSState(() {
                                                  itemCount = itemCount - 1;
                                                });
                                              }
                                            },
                                            icon: const Icon(
                                              CupertinoIcons.minus,
                                              color: Color(0xff5654a2),
                                              size: 25,
                                            ),
                                          ),
                                          Container(
                                            height: 30,
                                            width: 80,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xff5654a2),
                                              ),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(5),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text('$itemCount'),
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              setSState(() {
                                                itemCount = itemCount + 1;
                                              });
                                            },
                                            icon: const Icon(
                                              CupertinoIcons.plus,
                                              color: Color(0xff5654a2),
                                              size: 25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Container(
                                      width: width,
                                      height: height / 13,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(6),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            offset: const Offset(0, 2),
                                            blurRadius: 4,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      child: const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            'Enter Price',
                                            style: TextStyle(
                                              color: Color(0xff5654a2),
                                            ),
                                          ),
                                          Text(
                                            '100',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Container(
                                      width: width,
                                      height: height / 17,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(6),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            offset: const Offset(0, 2),
                                            blurRadius: 4,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 28, right: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  'Discount(%)',
                                                  style: TextStyle(
                                                    color: Color(0xff5654a2),
                                                  ),
                                                ),
                                                Text(
                                                  '0%',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 18,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            TextButton(
                                              onPressed: () {},
                                              child: const Text(
                                                'RESET',
                                                style: TextStyle(
                                                    color: Colors.red),
                                              ),
                                            ),
                                            const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  'Discount Per Item',
                                                  style: TextStyle(
                                                    color: Color(0xff5654a2),
                                                  ),
                                                ),
                                                Text(
                                                  '0.00',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 18,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Container(
                                      width: width,
                                      height: height / 13,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(6),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            offset: const Offset(0, 2),
                                            blurRadius: 4,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          const Text(
                                            'Free or Gift (Price 0)',
                                            style: TextStyle(
                                              color: Color(0xff5654a2),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Row(
                                                children: [
                                                  Checkbox(
                                                    activeColor:
                                                        const Color(0xff5654a2),
                                                    value: free,
                                                    onChanged: (value) {
                                                      setSState(() {
                                                        free = value!;
                                                      });
                                                    },
                                                  ),
                                                  const Text(
                                                    'Give as Free',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Checkbox(
                                                    activeColor:
                                                        const Color(0xff5654a2),
                                                    value: gift,
                                                    onChanged: (value) {
                                                      setSState(() {
                                                        gift = value!;
                                                      });
                                                    },
                                                  ),
                                                  const Text(
                                                    'Give as Gift',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: const ListTile(
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
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
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
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Row(
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
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 1,
                      width: width,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Row(
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
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
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
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
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
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: height / 38,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 4),
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.deepOrangeAccent,
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'CLEAR',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 4, right: 8),
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color(0xffffbf00),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'SAVE FOR LATER',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  useSafeArea: true,
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return CustomBottomSheet();
                  },
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                  color: Colors.green,
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
                height: height / 15,
                child: const Center(
                  child: Text(
                    "CHARGE : INR200.00",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
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

class CustomBottomSheet extends StatefulWidget {
  @override
  _CustomBottomSheetState createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.grey.shade400),
            child: const Center(
              child: Text(
                'CUSTOMER DETAILS(OPTIONAL)',
                style: TextStyle(
                  color: Color(0xff5654a2),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8, right: 8, top: 8, bottom: 4),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 4),
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: Colors.black),
                            decoration: const InputDecoration(
                              hintText: '+91',
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8, left: 4),
                          child: TextFormField(
                            textAlign: TextAlign.start,
                            style: const TextStyle(color: Colors.black),
                            decoration: const InputDecoration(
                              hintText: 'Mobile Number',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                          color: Color(0xff5654a2),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const Icon(
                            Icons.search_rounded,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 16, left: 16, bottom: 16),
                        child: TextFormField(
                          cursorColor: const Color(0xff5654a2),
                          textAlign: TextAlign.start,
                          style: const TextStyle(color: Colors.black),
                          decoration: const InputDecoration(
                            hintText: 'Customer name',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.grey.shade400),
                  child: const Center(
                    child: Text(
                      'SELECT PAYMENT MODE',
                      style: TextStyle(
                        color: Color(0xff5654a2),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 16, top: 8, right: 4),
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: MediaQuery.of(context).size.height / 9,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      offset: const Offset(0, 2),
                                      blurRadius: 4,
                                      spreadRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset(
                                      'assets/images/delivery.png',
                                      height: 45,
                                      width: 45,
                                    ),
                                    const Text(
                                      'Cash',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff5654a2),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 4, top: 8, right: 16),
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: MediaQuery.of(context).size.height / 9,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      offset: const Offset(0, 2),
                                      blurRadius: 4,
                                      spreadRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset(
                                      'assets/images/3d-credit-card.png',
                                      height: 45,
                                      width: 45,
                                    ),
                                    const Text(
                                      'Debit Card',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff5654a2),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 16, top: 8, right: 4),
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: MediaQuery.of(context).size.height / 9,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      offset: const Offset(0, 2),
                                      blurRadius: 4,
                                      spreadRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset(
                                      'assets/images/3d-credit-card.png',
                                      height: 45,
                                      width: 45,
                                    ),
                                    const Text(
                                      'Credit Card',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff5654a2),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 4, top: 8, right: 16),
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: MediaQuery.of(context).size.height / 9,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      offset: const Offset(0, 2),
                                      blurRadius: 4,
                                      spreadRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset(
                                      'assets/images/credit-score.png',
                                      height: 45,
                                      width: 45,
                                    ),
                                    const Text(
                                      'Pay Later',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff5654a2),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 16, top: 8, right: 4),
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: MediaQuery.of(context).size.height / 9,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      offset: const Offset(0, 2),
                                      blurRadius: 4,
                                      spreadRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset(
                                      'assets/images/mobile-banking.png',
                                      height: 45,
                                      width: 45,
                                    ),
                                    const Text(
                                      'UPI',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff5654a2),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 4, top: 8, right: 16),
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: MediaQuery.of(context).size.height / 9,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      offset: const Offset(0, 2),
                                      blurRadius: 4,
                                      spreadRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: const Color(0xff5654a2),
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          CupertinoIcons.plus,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      'Add New',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff5654a2),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
