import 'package:flutter/material.dart';

class InventoryScreen extends StatefulWidget {
  const InventoryScreen({super.key});

  @override
  State<InventoryScreen> createState() => _InventoryScreenState();
}

class _InventoryScreenState extends State<InventoryScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xff5654a2),
            ),
          ),
          title: const Text(
            'INVENTORY MANAGEMENT',
            style: TextStyle(
              color: Color(0xff5654a2),
              fontSize: 17,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_rounded,
                color: Color(0xff5654a2),
              ),
            ),
          ],
          bottom: const TabBar(
            physics: BouncingScrollPhysics(),
            isScrollable: true,
            indicatorColor: Color(0xff5654a2),
            labelColor: Colors.black,
            tabs: [
              Tab(text: 'ALL'),
              Tab(text: 'CATEGORY'),
              Tab(text: 'MODIFIERS'),
              Tab(text: 'INGREDIENT'),
            ],
          ),
          elevation: 0.0,
        ),
        body: TabBarView(
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 15,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: const Offset(0, 2),
                        blurRadius: 4,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: ChipSelectionWidget(),
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
                        "No Items, Please Add one!",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Center(
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
                    "No Category, Please Add one!",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            Center(
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
                    "No Modifiers, Please Add one!",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            Center(
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
                    "No Ingredients, Please Add one!",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChipSelectionWidget extends StatefulWidget {
  @override
  _ChipSelectionWidgetState createState() => _ChipSelectionWidgetState();
}

class _ChipSelectionWidgetState extends State<ChipSelectionWidget> {
  int selectedChipIndex = 0;
  final List<String> chipLabels = ['All', 'Low Stock', 'Expired'];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Wrap(
          spacing: 8.0,
          children: List<Widget>.generate(chipLabels.length, (index) {
            return ChoiceChip(
              label: Text(chipLabels[index]),
              selectedColor: const Color(0xffacabd4),
              labelStyle: const TextStyle(color: Colors.black),
              selected: selectedChipIndex == index,
              onSelected: (selected) {
                setState(() {
                  selectedChipIndex = selected ? index : -1;
                });
              },
            );
          }),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.filter_list),
        )
      ],
    );
  }
}
