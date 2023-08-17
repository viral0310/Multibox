import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InventoryScreen extends StatefulWidget {
  const InventoryScreen({super.key});

  @override
  State<InventoryScreen> createState() => _InventoryScreenState();
}

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
];

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
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
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
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/AddItemScreen');
                  },
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: cardData.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding:
                            const EdgeInsets.only(top: 8, left: 8, right: 8),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
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
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.black,
                                      radius: 22,
                                      backgroundImage:
                                          AssetImage(cardData[index]['icon']),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(cardData[index]['title']),
                                      Text(
                                        '₹${cardData[index]['price']}',
                                        style: const TextStyle(
                                            color: Color(0xff5654a2),
                                            fontSize: 18),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 8, right: 8),
                                child: Divider(
                                  thickness: 2,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, bottom: 8),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 32,
                                  width: MediaQuery.of(context).size.width / 5,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff5654a2),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '₹${cardData[index]['price']}',
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: cardData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding:
                              const EdgeInsets.only(top: 8, left: 8, right: 8),
                          child: Container(
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
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.black,
                                        radius: 15,
                                        backgroundImage:
                                            AssetImage(cardData[index]['icon']),
                                      ),
                                    ),
                                    Text(cardData[index]['title']),
                                    const Spacer(),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        CupertinoIcons.delete,
                                        color: Colors.red,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        CupertinoIcons.up_arrow,
                                        color: Color(0xff5654a2),
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        CupertinoIcons.down_arrow,
                                        color: Color(0xff5654a2),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  /*Container(
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
                  ),*/
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 13.3,
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: ListTile(
                                contentPadding: EdgeInsets.zero,
                                title: Text(
                                  'Divyang',
                                  style: TextStyle(
                                    color: Color(0xff5654a2),
                                    fontSize: 18,
                                  ),
                                ),
                                subtitle: Text('Yash , Karan , Vivek'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                CupertinoIcons.up_arrow,
                                color: Color(0xff5654a2),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                CupertinoIcons.down_arrow,
                                color: Color(0xff5654a2),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  /*Container(
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
                  ),*/
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 13.3,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: const Offset(0, 2),
                              blurRadius: 4,
                              spreadRadius: 1,
                            ),
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: ListTile(
                                contentPadding: EdgeInsets.zero,
                                title: Text(
                                  'Pan',
                                  style: TextStyle(
                                    color: Color(0xff5654a2),
                                    fontSize: 18,
                                  ),
                                ),
                                subtitle: Text('10.00'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                CupertinoIcons.arrow_right,
                                color: Color(0xff5654a2),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  /* Container(
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
                  ),*/
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: const Color(0xff5654a2),
            onPressed: () {
              _showBottomSheet(context);
            },
            child: const Icon(
              CupertinoIcons.plus,
              color: Colors.white,
            )),
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

void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, top: 8, right: 4),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).pushNamed('/AddItemScreen');
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height / 6,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
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
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Add Item',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff5654a2),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4, top: 8, right: 8),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).pushNamed('/CategoryScreen');
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height / 6,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
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
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Add Category',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff5654a2),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, top: 8, right: 4),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).pushNamed('/ModifierScreen');
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height / 6,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
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
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Add Modifier',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff5654a2),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4, top: 8, right: 8),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).pushNamed('/IngredientScreen');
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height / 6,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
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
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Add Ingredient',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff5654a2),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 8, right: 8),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                    _showBottomSheet2(context);
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 9,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
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
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Bulk Edit',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff5654a2),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

void _showBottomSheet2(BuildContext context) {
  showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(50), topLeft: Radius.circular(50))),
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, top: 8, right: 4),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                          showFloatingSnackbar(context, 'An error occurred!');
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height / 6,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
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
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Bulk Price Edit',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff5654a2),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4, top: 8, right: 8),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                          showFloatingSnackbar(context, 'An error occurred!');
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height / 6,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
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
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Bulk Stock Edit',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff5654a2),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, top: 8, right: 4),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                          showFloatingSnackbar(context, 'An error occurred!');
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height / 6,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
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
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Bulk Cost Price',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff5654a2),
                                ),
                              ),
                              Text(
                                'Edit',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff5654a2),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4, top: 8, right: 8),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                          showFloatingSnackbar(context, 'An error occurred!');
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height / 6,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
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
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Bulk Variant',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff5654a2),
                                ),
                              ),
                              Text(
                                'Name Edit',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff5654a2),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}

void showFloatingSnackbar(BuildContext context, String message) {
  final snackBar = SnackBar(
    behavior: SnackBarBehavior.floating,
    content: Row(
      children: [
        const Icon(Icons.error, color: Colors.white),
        const SizedBox(width: 8),
        Text(
          message,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    ),
    backgroundColor: const Color(0xff8b89c2),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
