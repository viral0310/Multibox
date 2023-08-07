import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class AddItemScreen extends StatefulWidget {
  const AddItemScreen({super.key});

  @override
  State<AddItemScreen> createState() => _AddItemScreenState();
}

String category1 = '';
String Sellvalue = "Sell By Unit";
bool selcted2 = false;

class _AddItemScreenState extends State<AddItemScreen> {
  final TextEditingController itemEditingController = TextEditingController();
  final TextEditingController categoryEditingController =
      TextEditingController();
  final TextEditingController sellingPriceTab1EditingController =
      TextEditingController();

  File? _image;

  bool _isButtonEnabled = false;
  bool _isButton4Enabled = false;

  bool category = false;

  @override
  void initState() {
    super.initState();
    itemEditingController.addListener(_updateButtonStatus);
    sellingPriceTab1EditingController.addListener(_updateButton4Status);
  }

  @override
  void dispose() {
    itemEditingController.dispose();
    categoryEditingController.dispose();
    sellingPriceTab1EditingController.dispose();

    super.dispose();
  }

  void _updateButtonStatus() {
    setState(() {
      _isButtonEnabled = itemEditingController.text.isNotEmpty;
    });
  }

  void _updateButton4Status() {
    setState(() {
      _isButton4Enabled = sellingPriceTab1EditingController.text.isNotEmpty;
    });
  }

  Future<void> _pickImage() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      _image = File(pickedImage!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: const Color(0xff5654a2),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Image.asset(
              'assets/images/close.png',
              width: 18,
              height: 18,
              color: Colors.white,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                onPressed: () {},
                child: const Text(
                  'DELETE',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              const Column(
                children: [
                  Text(
                    'MANAGE',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xffffffff),
                    ),
                  ),
                  Text(
                    'ITEM',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xffffffff),
                    ),
                  ),
                ],
              ),
              HeartCheckbox(
                selected: selcted2,
                onChanged: (newValue) {
                  setState(() {
                    selcted2 = newValue;
                  });
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                onPressed: () {},
                child: const Text(
                  'SAVE',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    offset: const Offset(0, 2),
                    blurRadius: 4,
                    spreadRadius: 2,
                  ),
                ],
              ),
              width: width,
              height: height / 14,
              child: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: TextField(
                  controller: itemEditingController,
                  cursorColor: const Color(0xff5654a2),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding: const EdgeInsets.only(top: 10, bottom: 10),
                    label: const Text(
                      'Item Name',
                      style: TextStyle(
                        color: Color(0xFF979797),
                        fontSize: 18,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    prefixIcon: Checkbox(
                      shape: const CircleBorder(),
                      fillColor: MaterialStateProperty.all(
                        const Color(0xff5654a2),
                      ),
                      value: _isButtonEnabled,
                      onChanged: (value) {},
                    ),
                    hintText: 'Ex: Apple',
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: width,
              height: height / 14,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    offset: const Offset(0, 2),
                    blurRadius: 4,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: InkWell(
                onTap: () {
                  _openBottomSheet2(context);
                },
                child: Container(
                  padding: const EdgeInsets.only(right: 16),
                  child: Row(
                    children: [
                      Checkbox(
                        shape: const CircleBorder(),
                        fillColor: MaterialStateProperty.all(
                          const Color(0xff5654a2),
                        ),
                        value: category,
                        onChanged: (value) {},
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'Category',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(3),
                                    ),
                                    color: Colors.blue,
                                  ),
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  category1,
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    offset: const Offset(0, 2),
                    blurRadius: 4,
                    spreadRadius: 2,
                  ),
                ],
              ),
              width: width,
              height: height / 14,
              child: Row(
                children: [
                  Checkbox(
                    shape: const CircleBorder(),
                    fillColor: MaterialStateProperty.all(
                      const Color(0xff5654a2),
                    ),
                    value: true,
                    onChanged: (value) {},
                  ),
                  Expanded(
                    child: CustomDropdown(),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: height / 14,
                width: width,
                decoration: const BoxDecoration(color: Colors.white),
                child: const TabBar(
                  indicatorColor: Color(0xff5654a2),
                  indicator: BoxDecoration(
                    color: Color(
                        0xff5654a2), // Set the background color of the tabs
                  ),
                  labelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Tab(text: 'Simple'),
                    Tab(text: 'Advance'),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              offset: const Offset(0, 2),
                              blurRadius: 4,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        width: width,
                        height: height / 14,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: TextField(
                            controller: sellingPriceTab1EditingController,
                            keyboardType: TextInputType.phone,
                            cursorColor: const Color(0xff5654a2),
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              disabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              contentPadding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              label: const Text(
                                'Selling Price',
                                style: TextStyle(
                                  color: Color(0xFF979797),
                                  fontSize: 18,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              hintText: "0.00",
                              hintStyle: const TextStyle(
                                  fontSize: 16, color: Colors.grey),
                              prefixIcon: Checkbox(
                                shape: const CircleBorder(),
                                fillColor: MaterialStateProperty.all(
                                  const Color(0xff5654a2),
                                ),
                                value: _isButton4Enabled,
                                onChanged: (value) {},
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: _pickImage,
                        child: CircleAvatar(
                          backgroundColor: const Color(0xff9c9acb),
                          backgroundImage:
                              _image != null ? FileImage(_image!) : null,
                          radius: 50,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.help,
                            color: Color(0xff5654a2),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pro Tip: Use advance mode for feature like",
                                style: TextStyle(
                                  color: Color(0xff5654a2),
                                ),
                              ),
                              Text(
                                "Stock and Profit tracking",
                                style: TextStyle(
                                  color: Color(0xff5654a2),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  const Center(
                    child: Text('Tab 2 content'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _openBottomSheet2(BuildContext context) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 14,
              color: Colors.white,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Image.asset(
                      'assets/images/close.png',
                      width: 18,
                      height: 18,
                      color: const Color(0xff5654a2),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 58),
                    child: Text(
                      'SELECT CATEGORY',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff5654a2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 18,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color(0xff5654a2),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/CategoryScreen');
                  },
                  child: const Text(
                    'ADD NEW CATEGORY',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, top: 8, right: 4),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          category = true;
                          category1 = 'PAN';
                        });
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height / 7,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
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
                            CircleAvatar(
                              radius: 30,
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              'PAN',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
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
                        setState(() {
                          category = true;
                          category1 = 'EGG';
                        });
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height / 7,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
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
                            CircleAvatar(
                              radius: 30,
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              'EGG',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
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
        );
      },
    );
  }
}

class HeartCheckbox extends StatefulWidget {
  final bool selected;
  final ValueChanged<bool> onChanged;

  const HeartCheckbox({required this.selected, required this.onChanged});

  @override
  _HeartCheckboxState createState() => _HeartCheckboxState();
}

class _HeartCheckboxState extends State<HeartCheckbox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onChanged(!widget.selected);
      },
      child: ClipPath(
        clipper: HeartClipper(),
        child: Container(
          width: 24.0,
          height: 24.0,
          decoration: BoxDecoration(
            color: widget.selected ? Colors.green : Colors.transparent,
            border: Border.all(color: Colors.green),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Icon(
            Icons.favorite,
            size: 16.0,
            color: widget.selected ? Colors.white : Colors.green,
          ),
        ),
      ),
    );
  }
}

class HeartClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final x = size.width / 2;
    final y = size.height / 2;

    path.moveTo(x, y);
    path.cubicTo(x, y - 60, x + 80, y - 60, x + 80, y);
    path.cubicTo(x + 80, y + 80, x, y + 130, x, y + 130);
    path.cubicTo(x, y + 130, x - 80, y + 80, x - 80, y);
    path.cubicTo(x - 80, y - 60, x, y - 60, x, y);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class CustomDropdown extends StatefulWidget {
  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  final TextEditingController kgEditingController = TextEditingController();

  bool _isButton4Enabled = false;

  @override
  void initState() {
    super.initState();
    kgEditingController.addListener(_updateButton3Status);
  }

  @override
  void dispose() {
    kgEditingController.dispose();

    super.dispose();
  }

  void _updateButton3Status() {
    setState(() {
      _isButton4Enabled = kgEditingController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _openBottomSheet(context);
      },
      child: Container(
        padding: const EdgeInsets.only(left: 4, right: 12),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Text(
                Sellvalue,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            const Icon(Icons.arrow_drop_down),
            if (Sellvalue == 'Sell By Fraction')
              Expanded(
                flex: 1,
                child: TextField(
                  controller: kgEditingController,
                  keyboardType: TextInputType.phone,
                  cursorColor: const Color(0xff5654a2),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding: const EdgeInsets.only(top: 10, bottom: 10),
                    hintText: "Kg",
                    hintStyle:
                        const TextStyle(fontSize: 18, color: Colors.grey),
                    prefixIcon: Checkbox(
                      shape: const CircleBorder(),
                      fillColor: MaterialStateProperty.all(
                        const Color(0xff5654a2),
                      ),
                      value: _isButton4Enabled,
                      onChanged: (value) {},
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  void _openBottomSheet(BuildContext context) {
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
          height: MediaQuery.of(context).size.height / 4,
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20))),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        setState(() {
                          Sellvalue = "Sell By Unit";
                        });
                      },
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 8, top: 8, right: 4),
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
                                'Sell By Unit',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff5654a2),
                                ),
                              ),
                              Text(
                                'Sell as whole and fixed',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Text(
                                'unit',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        setState(() {
                          Sellvalue = "Sell By Fraction";
                        });
                      },
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 4, top: 8, right: 8),
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
                                'Sell By Fraction',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff5654a2),
                                ),
                              ),
                              Text(
                                'Sell as Loose with 1:1000',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Text(
                                'eg: 1kg = 1000gm, 0.250 =',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Text(
                                '250 gm',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff000000),
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
        );
      },
    );
  }
}
