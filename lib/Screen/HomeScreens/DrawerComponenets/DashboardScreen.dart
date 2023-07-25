import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils.dart';
import '../DrawerScreens.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerScreen(),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.printer,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.filter_list_sharp,
            ),
          ),
        ],
        title: const Text(
          'Dashboard',
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
        backgroundColor: const Color(0xff5654a2),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/SetUpScreen');
              },
              child: Container(
                height: 120,
                width: MediaQuery.of(context).size.width - 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(0, 2),
                      blurRadius: 4,
                      spreadRadius: 2,
                    ),
                  ],
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/cardbg.jpeg'),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: const Offset(0, 2),
                          blurRadius: 4,
                          spreadRadius: 2,
                        ),
                      ], borderRadius: BorderRadius.circular(30)),
                      child: const CircleAvatar(
                        backgroundColor: Color(0xffffffff),
                        radius: 30,
                        child: Icon(
                          Icons.credit_card,
                          color: Color(0xff5654a2),
                          size: 35,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Setup online Payment',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        Text(
                          'Set up a payment gateway method',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Nunito',
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: const Color(0xffffffff),
                          ),
                        ),
                        Text(
                          'to receive quick payments from your',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Nunito',
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: const Color(0xffffffff),
                          ),
                        ),
                        Text(
                          'clients. ',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Nunito',
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: const Color(0xffffffff),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showBottomSheet(context);
        },
        backgroundColor: const Color(0xffa164a9),
        child: const Icon(CupertinoIcons.plus),
      ),
    );
  }
}

void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(50),
        topRight: Radius.circular(50),
      ),
    ),
    context: context,
    builder: (BuildContext context) {
      return Container(
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
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(50), topLeft: Radius.circular(50))),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              textAlign: TextAlign.center,
              'Create New',
              style: SafeGoogleFont(
                'Poppins',
                fontSize: 20,
                color: const Color(0xffffffff),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.perm_contact_cal_outlined,
                          color: Color(0xff5654a2),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Contact",
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 13,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.cart,
                          color: Color(0xff5654a2),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Purchase Order",
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 13,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.account_balance_wallet_outlined,
                          color: Color(0xff5654a2),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Expense",
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 13,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 27,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.money_dollar_circle,
                          color: Color(0xff5654a2),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Payment",
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 13,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      );
    },
  );
}
