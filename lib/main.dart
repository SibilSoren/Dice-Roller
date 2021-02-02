import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int leftindex = 1;
  int rightindex = 1;

  void imageChanger(){
    setState(() {
      leftindex = Random().nextInt(6) + 1;
      rightindex = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dice'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(child: FlatButton(
                onPressed:imageChanger,
                child: Image.asset('images/dice$leftindex.png'))),
            Expanded(child: FlatButton(
                onPressed: imageChanger,
                child: Image.asset('images/dice$rightindex.png')))
          ],
        ),
      ),

    );
  }
}



