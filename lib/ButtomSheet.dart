import 'package:flutter/material.dart';

import 'buttom screen/Item.dart';
import 'buttom screen/counter.dart';
import 'buttom screen/more.dart';
import 'buttom screen/report.dart';
import 'buttom screen/today.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int index = 1;
  final screens = [
    const ItemScreen(),
    const CounterScreen(),
    const TodayScreen(),
    const ReportScreen(),
    const MoreScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        child: NavigationBar(
          surfaceTintColor: Colors.blue,
          shadowColor: Colors.blueAccent,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          height: 60,
          //indicatorShape: const CircleBorder(),
          indicatorColor: const Color(0xffa164a9),
          backgroundColor: const Color(0xff5654a2),
          elevation: double.maxFinite,
          destinations: [
            NavigationDestination(
                icon: Image.asset(
                  'assets/images/bottom/to-do.png',
                  width: 25,
                  height: 25,
                  color: Colors.white,
                ),
                label: 'Items'),
            NavigationDestination(
                icon: Image.asset(
                  'assets/images/bottom/cash-register.png',
                  width: 25,
                  height: 25,
                  color: Colors.white,
                ),
                label: 'Counter'),
            NavigationDestination(
                icon: Image.asset(
                  'assets/images/bottom/invoice.png',
                  width: 25,
                  height: 25,
                  color: Colors.white,
                ),
                label: 'Today'),
            NavigationDestination(
                icon: Image.asset(
                  'assets/images/bottom/report.png',
                  width: 25,
                  height: 25,
                  color: Colors.white,
                ),
                label: 'Report'),
            NavigationDestination(
                icon: Image.asset(
                  'assets/images/bottom/application.png',
                  width: 25,
                  height: 25,
                  color: Colors.white,
                ),
                label: 'More'),
          ],
        ),
      ),
    );
  }
}
