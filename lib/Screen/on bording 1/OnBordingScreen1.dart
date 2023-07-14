import 'package:flutter/material.dart';
import 'package:multi_purpose_app/Screen/Login/RegisterScreen.dart';

import '../../utils.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({super.key});

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  List onBordingData = [
    {
      "image": 'assets/images/on 1/on 1.png',
      "description": 'We Provide high quality products just for you',
    },
    {
      "image": 'assets/images/on 1/on 2.png',
      "description": 'Your satisfaction is our number one priority',
    },
    {
      "image": 'assets/images/on 1/on 3.png',
      "description": 'Let’s fulfill your daily need with MultiBox Right Now!',
    }
  ];
  PageController pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390.0000915527;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: pageController,
            itemCount: onBordingData.length,
            onPageChanged: (value) => setState(() {
              currentIndex = value;
            }),
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        31.5 * fem, 537 * fem, 32.5 * fem, 100 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20 * fem),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          onBordingData[index]['image'],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0, -1),
                        end: Alignment(0, 1),
                        colors: <Color>[Color(0x00000000), Color(0xff000000)],
                        stops: <double>[0, 1],
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(
                        flex: 11,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            15 * fem, 0 * fem, 0 * fem, 28 * fem),
                        constraints: BoxConstraints(
                          maxWidth: 364 * fem,
                        ),
                        child: Text(
                          onBordingData[index]['description'],
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Nunito',
                            fontSize: 37 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.3625 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 4,
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
          Positioned(
            bottom: 150,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: onBordingData.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => pageController.animateToPage(entry.key,
                      duration: const Duration(seconds: 5),
                      curve: Curves.linear),
                  child: Container(
                    width: currentIndex == entry.key ? 35 : 8,
                    height: 8,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 3.0,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currentIndex == entry.key
                            ? const Color(0xff5654a2)
                            : const Color(0xffaeaeae)),
                  ),
                );
              }).toList(),
            ),
          ),
          Positioned(
            bottom: 80,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(right: 40, left: 40),
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width - 80,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff5654a2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  onPressed: () {
                    if (currentIndex == onBordingData.length - 1) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()));
                    }
                    pageController.nextPage(
                        duration: const Duration(milliseconds: 100),
                        curve: Curves.bounceIn);
                  },
                  child: const Text('Next'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
