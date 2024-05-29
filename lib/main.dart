import 'package:flutter/material.dart';
import 'dart:math';

void main(List<String> args) {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftSideDice = 1;
  int rightSideDice = 1;
  void change() {
    setState(() {
      leftSideDice = Random().nextInt(6) + 1;
      rightSideDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade200,
        centerTitle: true,
        title: Text("Dice"),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                  onPressed: change,
                  child: Image.asset("images/dice$leftSideDice.png")),
            ),
            Expanded(
              child: TextButton(
                  onPressed: change,
                  child: Image.asset("images/dice$rightSideDice.png")),
            )
          ],
        ),
      ),
    ));
  }
}
