import 'package:flutter/material.dart';

import '../Screen/HomeScreens/DrawerScreens.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      drawer: const DrawerScreen(),
      appBar: AppBar(
        backgroundColor: const Color(0xff5654a2),
        title: const Text(
          'Report',
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
            padding: const EdgeInsets.only(top: 10),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.width,
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
                child: DateChangerWidget(),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(250),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/girl.png'),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  "No Report for select Date",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DateChangerWidget extends StatefulWidget {
  @override
  _DateChangerWidgetState createState() => _DateChangerWidgetState();
}

class _DateChangerWidgetState extends State<DateChangerWidget> {
  DateTime selectedDate = DateTime.now();

  void changeDate(int daysToAdd) {
    final DateTime currentDate = DateTime.now();
    final DateTime newDate = selectedDate.add(Duration(days: daysToAdd));

    if (newDate.isBefore(currentDate)) {
      setState(() {
        selectedDate = newDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final Color iconColor =
        '${selectedDate.day}-${selectedDate.month}-${selectedDate.year}' !=
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}'
            ? const Color(0xff5654a2)
            : Colors.grey;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xff5654a2),
          ),
          onPressed: () {
            changeDate(-1);
          },
        ),
        GestureDetector(
          onTap: () {},
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.calendar_month,
                color: Color(0xff5654a2),
              ),
              Text(
                '  ${selectedDate.day}-${selectedDate.month}-${selectedDate.year}',
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        IconButton(
          icon: Icon(
            Icons.arrow_forward,
            color: iconColor,
          ),
          onPressed: () => changeDate(1),
        ),
      ],
    );
  }
}
