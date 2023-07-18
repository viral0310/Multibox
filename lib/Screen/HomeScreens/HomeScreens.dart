import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    double baseWidth = 390.0000915527;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      drawer: Drawer(
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
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DrawerIcons("assets/images/Drawer/checkout.png", 'Checkout'),
                  DrawerIcons(
                      "assets/images/Drawer/analytics.png", 'Dashboard'),
                  DrawerIcons(
                      "assets/images/Drawer/contact-book.png", 'Contact'),
                  DrawerIcons(
                      "assets/images/Drawer/business-report.png", 'Report'),
                  DrawerIcons("assets/images/Drawer/insurance-company.png",
                      'Companies'),
                  DrawerIcons("assets/images/Drawer/settings.png", 'Setting'),
                  DrawerIcons("assets/images/Drawer/group.png", 'Team'),
                  Divider(),
                  Text(
                    'Comumunicate',
                    textAlign: TextAlign.start,
                  ),
                  DrawerIcons(
                      "assets/images/Drawer/share.png", 'Share This App'),
                  DrawerIcons(
                      "assets/images/Drawer/send-mail.png", 'Contact Support'),
                  DrawerIcons("assets/images/Drawer/rating.png", 'Rate Us'),
                ],
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xff5654a2),
      ),
    );
  }
}

Widget DrawerIcons(String image, String text) {
  return Builder(builder: (context) {
    return SizedBox(
      height: 45,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
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
              width: 15,
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
    );
  });
}
