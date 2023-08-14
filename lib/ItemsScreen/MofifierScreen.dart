import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModifierScreen extends StatefulWidget {
  const ModifierScreen({super.key});

  @override
  State<ModifierScreen> createState() => _ModifierScreenState();
}

final TextEditingController modifierEditingController = TextEditingController();

class _ModifierScreenState extends State<ModifierScreen> {
  List<TextEditingController> textControllers = [];
  List<TextEditingController> text2Controllers = [];

  int textFieldCount = 1;
  int text2FieldCount = 1;

  @override
  void initState() {
    super.initState();
    textControllers.add(TextEditingController());
    text2Controllers.add(TextEditingController());
    textControllers = List.generate(
      items.length,
      (index) => TextEditingController(text: items[index]),
    );
    text2Controllers = List.generate(
      items.length,
      (index) => TextEditingController(text: items[index]),
    );
  }

  void removeItem(int index) {
    setState(() {
      text2Controllers[index].dispose();
      text2Controllers.removeAt(index);
      textControllers[index].dispose();
      textControllers.removeAt(index);
      items.removeAt(index);
      textFieldCount -= 1;
    });
  }

  List<String> items = List.generate(50, (index) => '');

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
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
        title: const Text(
          'CREATE MODIFIER SET',
          style: TextStyle(
            color: Color(0xffffffff),
            fontSize: 18,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Save',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(
                    Icons.check_circle,
                    color: Colors.white,
                    size: 25,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
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
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: TextField(
                    controller: modifierEditingController,
                    cursorColor: const Color(0xff5654a2),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      disabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: 'Modifier Set Name',
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Text(
                  '   MODIFIERS',
                  style: TextStyle(
                    color: Color(0xff5654a2),
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            ReorderableListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              onReorder: (oldIndex, newIndex) {
                setState(() {
                  if (newIndex > oldIndex) {
                    newIndex -= 1;
                  }
                  final String item = items.removeAt(oldIndex);
                  items.insert(newIndex, item);

                  final TextEditingController controller1 =
                      textControllers.removeAt(oldIndex);
                  textControllers.insert(newIndex, controller1);

                  final TextEditingController controller2 =
                      text2Controllers.removeAt(oldIndex);
                  text2Controllers.insert(newIndex, controller2);
                });
              },
              children: List.generate(
                textFieldCount,
                (index) => ListTile(
                  key: Key('$index'),
                  title: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Colors.white,
                    ),
                    width: width,
                    height: height / 14,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 3,
                            child: TextFormField(
                              controller: textControllers[index],
                              decoration: const InputDecoration(
                                hintText: 'Name',
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            flex: 2,
                            child: TextFormField(
                              keyboardType: TextInputType.phone,
                              controller: text2Controllers[index],
                              decoration: const InputDecoration(
                                hintText: 'INR0.00',
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () => removeItem(index),
                            icon: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Image.asset(
                                'assets/images/close.png',
                                color: Colors.red,
                                width: 20,
                                height: 20,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Icon(
                              CupertinoIcons.arrow_up_down_circle,
                              color: Color(0xff5654a2),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  textFieldCount++;
                  textControllers.add(
                    TextEditingController(),
                  );
                  text2FieldCount++;
                  text2Controllers.add(
                    TextEditingController(),
                  );
                });
              },
              icon: const Icon(
                CupertinoIcons.plus_circle_fill,
                color: Color(0xff5654a2),
                size: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
