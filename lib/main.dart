import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(DiceeApp());
}

class DiceeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red.shade700,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.red.shade900,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatelessWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int leftDiceNum = 1;
    int rightDiceNum = 1;

    void shuffleDice(String dice) {
      int newNum = Random().nextInt(5) + 1;
      if (dice == "right") {
        rightDiceNum = newNum;
      } else {
        leftDiceNum = newNum;
      }
    }

    return Center(
      child: Container(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                child: Image.asset("images/dice$leftDiceNum.png"),
                onPressed: () {
                  shuffleDice("right");
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                child: Image.asset("images/dice$rightDiceNum.png"),
                onPressed: () {
                  shuffleDice("right");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
