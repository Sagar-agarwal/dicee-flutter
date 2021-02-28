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

class DicePage extends StatefulWidget {
  DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;

  void shuffleDice() {
    setState(() {
      leftDiceNum = Random().nextInt(6) + 1;
      rightDiceNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                child: Image.asset("images/dice$leftDiceNum.png"),
                onPressed: () {
                  setState(() {
                    shuffleDice();
                  });
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                child: Image.asset("images/dice$rightDiceNum.png"),
                onPressed: () {
                  setState(() {
                    shuffleDice();
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
