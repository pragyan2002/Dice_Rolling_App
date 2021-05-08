import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(DiceRollingApp());
}

class DiceRollingApp extends StatefulWidget {
  @override
  _DiceRollingAppState createState() => _DiceRollingAppState();
}

class _DiceRollingAppState extends State<DiceRollingApp> {
  int nextDiceImage = 5;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          elevation: 0.0,
          title: Center(child: Text('Dice Rolling App')),
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                  child: Image.asset(
                      'assets/images/dice$nextDiceImage.png')),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  nextDiceImage = Random().nextInt(6) + 1;
                });
              },
              child: Text('Roll the Dice'),
            ),
          ],
        ),
      ),
    );
  }
}
