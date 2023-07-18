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
              height: height / 4,
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
              ),
              child: const Column(
                children: [],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xff5654a2),
      ),
    );
  }
}
