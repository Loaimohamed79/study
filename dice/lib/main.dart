import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.red,
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("DICE"),
        backgroundColor: Colors.red,
      ),
      body: DiceApp(),
    ));
  }
}

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftnumber = 1;
  int rightnumber = 1;
  void wow() {
    rightnumber = Random().nextInt(6) + 1;
    leftnumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  wow();
                });
              },
              child: Image.asset('images/dice$leftnumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightnumber.png'),
              onPressed: () {
                setState(() {
                  wow();
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
