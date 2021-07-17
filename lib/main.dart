import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(DiceGame());
}

class DiceGame extends StatefulWidget {
  const DiceGame({Key? key}) : super(key: key);
  @override
  _DiceGameState createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 6;
  void rollDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Dice Game"),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {
                      rollDice();
                    },
                    child: Image.asset("images/dice$leftDiceNumber.png"),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    child: Image.asset("images/dice$rightDiceNumber.png"),
                    onPressed: () {
                      rollDice();
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
