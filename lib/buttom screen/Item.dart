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
      'price': '100',
    },
    {
      'icon': 'assets/images/girl.png',
      'title': 'Cold Drink',
      'price': '100',
    },
    {
      'icon': 'assets/images/girl.png',
      'title': 'Wafer',
      'price': '100',
    },
    {'type': 'add'},
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
                            borderRadius: BorderRadius.all(Radius.circular(5))),
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
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 6),
              child: GridView.builder(
                itemCount: cardData.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 2 / 3,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return cardData[index]['type'] != null &&
                          cardData[index]['type'] == 'add'
                      ? GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed('/InventoryScreen');
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 4,
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add_circle,
                                    color: Color(0xff5654a2),
                                    size: 35,
                                  ),
                                  SizedBox(height: 8),
                                  Text('Add New'),
                                  Text('Item'),
                                ],
                              ),
                            ),
                          ),
                        )
                      : CardWidget(
                          icon: cardData[index]['icon'],
                          title: cardData[index]['title'],
                          price: cardData[index]['price'],
                        );
                },
              ),
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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              child: const Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
            ),
            InkWell(
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Image.asset(
                  icon,
                  height: 64,
                  width: 70,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(title),
            ),
            Text(
              '₹$price',
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
