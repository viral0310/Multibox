import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';

class ManagePayroll extends StatefulWidget {
  const ManagePayroll({super.key});

  @override
  State<ManagePayroll> createState() => _ManagePayrollState();
}

DateTime? selectedDate = DateTime.now();

class _ManagePayrollState extends State<ManagePayroll> {
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showMonthPicker(
      context: context,
      initialDate: DateTime.now(),
      headerColor: const Color(0xff5654a2),
      selectedMonthBackgroundColor: const Color(0xff5654a2),
      unselectedMonthTextColor: const Color(0xff5654a2),
    ).then((date) {
      if (date != null) {
        setState(() {
          selectedDate = date;
        });
      }
      return null;
    });

    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                _selectDate(context);
              },
              child: Container(
                height: 28,
                width: width / 1.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        DateFormat('MMMM yyyy').format(selectedDate!),
                        style: TextStyle(
                            fontSize: 14.0, color: Colors.grey.shade700),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.filter_alt_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'No Payment Found on selected filter',
          style: TextStyle(color: Colors.red),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff5654a2),
        onPressed: () {},
        child: const Icon(
          CupertinoIcons.plus,
          color: Colors.white,
        ),
      ),
    );
  }
}
