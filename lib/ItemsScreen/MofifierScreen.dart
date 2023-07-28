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
  int textFieldCount = 1;

  @override
  void initState() {
    super.initState();
    textControllers.add(TextEditingController());
  }

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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
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
          Expanded(
            child: ListView.builder(
              itemCount: textFieldCount,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Container(
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
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(
                            left: 2, right: 2, bottom: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: textControllers[index],
                                decoration: const InputDecoration(
                                  hintText: 'Name',
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: TextFormField(
                                  controller: textControllers[index],
                                  decoration: const InputDecoration(
                                    hintText: 'INR0.00',
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'assets/images/close.png',
                                color: Colors.red,
                                width: 20,
                                height: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          IconButton(
            onPressed: () {
              setState(() {
                textFieldCount++;
                textControllers.add(TextEditingController());
              });
            },
            icon: const Icon(
              CupertinoIcons.plus_circle_fill,
              color: Color(0xff5654a2),
              size: 35,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
