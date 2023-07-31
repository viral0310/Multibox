import 'package:flutter/cupertino.dart';
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
          ),
        ],
      ),
    );
  }
}
