import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

RxInt startPage = 1.obs;
final screens = [
  const ItemScreen(),
  const CounterScreen(),
  const TodayScreen(),
  const ReportScreen(),
  const MoreScreen(),
];

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Obx(() => screens[startPage.value]),
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
          child: Obx(
            () => NavigationBar(
              surfaceTintColor: Colors.blue,
              shadowColor: Colors.blueAccent,
              selectedIndex: startPage.value,
              onDestinationSelected: (index) => startPage.value = index,
              height: 60,
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
          )),
    );
  }
}
