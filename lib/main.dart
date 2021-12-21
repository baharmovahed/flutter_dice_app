import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DiceeScreen(),
      ),
    ),
  );
}

class DiceeScreen extends StatefulWidget {
  @override
  _DiceeScreenState createState() => _DiceeScreenState();
}

class _DiceeScreenState extends State<DiceeScreen> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
                onPressed: (){
                  changeNumber();

                },
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Image.asset("images/dice$leftDiceNumber.png"),
                ),
              )
          ),
          Expanded(
              child: FlatButton(
                onPressed: (){
                  changeNumber();
                },
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Image.asset("images/dice$rightDiceNumber.png"),
                ),
              )
          ),
        ],
      ),
    );
  }

  void changeNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
}

