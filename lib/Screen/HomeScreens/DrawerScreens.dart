import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

bool _isExpanded = false;

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    double baseWidth = 390.0000915527;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width,
              height: height / 6,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
                gradient: const LinearGradient(
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
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/shopping-logo 1.png",
                      height: 60,
                    ),
                    const Text(
                      ' MultiBox POS',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DrawerIcons("assets/images/Drawer/checkout.png", 'Checkout',
                      '/CheckoutScreen'),
                  DrawerIcons("assets/images/Drawer/analytics.png", 'Dashboard',
                      '/DashboardScreen'),
                  DrawerIcons(
                      "assets/images/Drawer/contact-book.png", 'Contact', ''),
                  buildPanel(),
                  const purchases(),
                  const Items(),
                  DrawerIcons(
                      "assets/images/Drawer/business-report.png", 'Report', ''),
                  DrawerIcons("assets/images/Drawer/insurance-company.png",
                      'Companies', ''),
                  DrawerIcons(
                      "assets/images/Drawer/settings.png", 'Setting', ''),
                  DrawerIcons("assets/images/Drawer/group.png", 'Team', ''),
                  const Divider(),
                  const Text(
                    '      Accounts',
                    textAlign: TextAlign.start,
                  ),
                  DrawerIcons(
                      "assets/images/Drawer/user.png", 'Edit Profile', ''),
                  DrawerIcons(
                      'assets/images/Drawer/shift.png', 'Switch Business', ''),
                  DrawerIcons('assets/images/Drawer/logout.png', 'Logout', ''),
                  const Divider(),
                  const Text(
                    '      Communicate',
                    textAlign: TextAlign.start,
                  ),
                  DrawerIcons(
                      "assets/images/Drawer/share.png", 'Share This App', ''),
                  DrawerIcons("assets/images/Drawer/send-mail.png",
                      'Contact Support', ''),
                  DrawerIcons("assets/images/Drawer/rating.png", 'Rate Us', ''),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget DrawerIcons(String image, String text, String routeName) {
  return Builder(builder: (context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: SizedBox(
        height: 45,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(routeName);
            },
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                  child: Image.asset(
                    image,
                    color: Colors.black87,
                    height: 28,
                    width: 28,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  child: Text(
                    text,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  });
}

class buildPanel extends StatefulWidget {
  buildPanel({
    super.key,
  });

  @override
  State<buildPanel> createState() => _buildPanelState();
}

class _buildPanelState extends State<buildPanel> {
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      dividerColor: Colors.red,
      expandedHeaderPadding: EdgeInsets.zero,
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          _isExpanded = !isExpanded;
        });
      },
      children: [
        ExpansionPanel(
          headerBuilder: (context, isExpanded) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListTile(
                title: const Text(
                  "Sale",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                leading: Image.asset(
                  'assets/images/Drawer/point-of-sale.png',
                  color: Colors.black87,
                  height: 28,
                  width: 28,
                ),
              ),
            );
          },
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: SizedBox(
                  height: 45,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                        child: Image.asset(
                          "assets/images/Drawer/check-list.png",
                          color: Colors.black87,
                          height: 28,
                          width: 28,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const SizedBox(
                        child: Text(
                          'Order',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: SizedBox(
                  height: 45,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                        child: Image.asset(
                          "assets/images/Drawer/bill.png",
                          color: Colors.black87,
                          height: 28,
                          width: 28,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const SizedBox(
                        child: Text(
                          'Sales Receipts',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: SizedBox(
                  height: 45,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                        child: Image.asset(
                          "assets/images/Drawer/invoice.png",
                          color: Colors.black87,
                          height: 28,
                          width: 28,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const SizedBox(
                        child: Text(
                          'Credit Notes',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: SizedBox(
                  height: 45,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                        child: Image.asset(
                          "assets/images/Drawer/mobile-payment.png",
                          color: Colors.black87,
                          height: 28,
                          width: 28,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const SizedBox(
                        child: Text(
                          'Payment',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          isExpanded: _isExpanded, // Set the initial state of the panel.
        ),
      ],
    );
  }
}

class purchases extends StatefulWidget {
  const purchases({super.key});

  @override
  State<purchases> createState() => _purchasesState();
}

class _purchasesState extends State<purchases> {
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expandedHeaderPadding: EdgeInsets.zero,
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          _isExpanded = !isExpanded;
        });
      },
      children: [
        ExpansionPanel(
          headerBuilder: (context, isExpanded) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListTile(
                title: const Text(
                  "Purchases",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                leading: Image.asset(
                  'assets/images/Drawer/shopping-bag.png',
                  color: Colors.black87,
                  height: 28,
                  width: 28,
                ),
              ),
            );
          },
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: SizedBox(
                  height: 45,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                        child: Image.asset(
                          "assets/images/Drawer/shopping-cart.png",
                          color: Colors.black87,
                          height: 28,
                          width: 28,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const SizedBox(
                        child: Text(
                          'Purchases Orders',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: SizedBox(
                  height: 45,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                        child: Image.asset(
                          "assets/images/Drawer/wallet.png",
                          color: Colors.black87,
                          height: 28,
                          width: 28,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const SizedBox(
                        child: Text(
                          'Expenses',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          isExpanded: _isExpanded, // Set the initial state of the panel.
        ),
      ],
    );
  }
}

class Items extends StatefulWidget {
  const Items({super.key});

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expandedHeaderPadding: EdgeInsets.zero,
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          _isExpanded = !isExpanded;
        });
      },
      children: [
        ExpansionPanel(
          headerBuilder: (context, isExpanded) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListTile(
                title: const Text(
                  "Items",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                leading: Image.asset(
                  'assets/images/Drawer/check-list.png',
                  color: Colors.black87,
                  height: 28,
                  width: 28,
                ),
              ),
            );
          },
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: SizedBox(
                  height: 45,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                        child: Image.asset(
                          "assets/images/Drawer/package-box.png",
                          color: Colors.black87,
                          height: 28,
                          width: 28,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const SizedBox(
                        child: Text(
                          'Products',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          isExpanded: _isExpanded, // Set the initial state of the panel.
        ),
      ],
    );
  }
}
