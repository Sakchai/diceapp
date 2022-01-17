import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 0;
  int rightDiceNumber = 0;
  int max = 6;
  int min = 1;
  Random rnd = new Random();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                    changeDiceFace();
                },
                child: Image.asset('images/dice$leftDiceNumber.png')
            ),
          ),
          Expanded(
              child: FlatButton(
                  onPressed: () {
                      changeDiceFace();
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'))
          ),
        ],
      ),
    );
  }

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = rnd.nextInt(max) + min;
      rightDiceNumber = rnd.nextInt(max) + min;
    });
  }
}

