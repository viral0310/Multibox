import 'package:flutter/material.dart';

import '../Screen/HomeScreens/DrawerScreens.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({super.key});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  final List<Map<String, dynamic>> cardData = [
    {
      'icon': 'assets/images/girl.png',
      'title': 'Pan',
      'price': 'INR100',
    },
    {
      'icon': 'assets/images/girl.png',
      'title': 'Cold Drink',
      'price': 'INR100',
    },
    {
      'icon': 'assets/images/girl.png',
      'title': 'Wafer',
      'price': 'INR100',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      drawer: const DrawerScreen(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff5654a2),
        title: const Text(
          'Items',
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
          Container(
            color: const Color(0xff5654a2),
            height: 55,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 1.19,
                    child: SearchBar(
                      shape: MaterialStateProperty.all(
                        const BeveledRectangleBorder(
                            borderRadius: BorderRadius.zero),
                      ),
                      leading: const Icon(
                        Icons.search_rounded,
                        color: Color(0xff5654a2),
                      ),
                      hintText: 'What do you want to sell',
                      hintStyle: MaterialStateProperty.all(
                        TextStyle(color: Colors.grey.shade500),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.document_scanner_sharp,
                    color: Colors.white,
                  ),
                ),

                // ListView.builder(
                // itemCount: itemList.length,
                // itemBuilder: (BuildContext context, int index) {
                // return const Card();
                //},
                // ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: cardData.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 2 / 3,
              ),
              itemBuilder: (BuildContext context, int index) {
                return CardWidget(
                  icon: cardData[index]['icon'],
                  title: cardData[index]['title'],
                  price: cardData[index]['price'],
                );
              },
            ),
          ),
          /*Expanded(
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
                  "No Items! Please Add Item or Search For",
                  style: TextStyle(color: Colors.grey),
                ),
                const Text(
                  "Quick Add",
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 10),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              const Color(0xffa164a9),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/InventoryScreen');
                          },
                          child: const Text(
                            'START ADDING',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),*/
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/QuickAddScreen');
        },
        backgroundColor: const Color(0xffa164a9),
        child: const Icon(Icons.flash_on_sharp),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String icon;
  final String title;
  final String price;

  CardWidget({required this.icon, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(icon), fit: BoxFit.fill),
              ),
            ),
            const SizedBox(height: 8),
            Text(title),
            const SizedBox(height: 30),
            Text(
              price,
              style: const TextStyle(
                color: Color(0xff5654a2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
