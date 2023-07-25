import 'package:flutter/material.dart';

class SetUpScreen extends StatefulWidget {
  const SetUpScreen({super.key});

  @override
  State<SetUpScreen> createState() => _SetUpScreenState();
}

class _SetUpScreenState extends State<SetUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff5654a2),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Payment Methods',
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.check,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
