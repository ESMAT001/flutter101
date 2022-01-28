import "dart:math";
import "package:flutter/material.dart";

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          centerTitle: true,
          title: const Text(
            'Dice App',
            style: TextStyle(
              fontFamily: 'Neon',
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: DiceApp(),
      ),
    ));

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int rightDiceNumber = Random().nextInt(6) + 1;
  int leftDiceNumber = Random().nextInt(6) + 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
            child: TextButton(
          onPressed: () {
            setState(() {
              leftDiceNumber = Random().nextInt(6) + 1;
            });
          },
          child: Image.asset('images/dice$leftDiceNumber.png'),
        )),
        Expanded(
            child: TextButton(
          onPressed: () {
            setState(() {
              rightDiceNumber = Random().nextInt(6) + 1;
            });
          },
          child: Image.asset('images/dice$rightDiceNumber.png'),
        )),
      ]),
    );
  }
}
