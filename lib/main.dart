import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class DiceApp extends StatefulWidget {
  DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  // This will eventually change when the dice is rolled
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white70,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title:Center(child: Text('Dice App' ))
          ),
    body: Container(
    // Set the background image
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('images/bg.jpg'), // Your background image
    fit: BoxFit.cover, // Make the image cover the entire background
    ),
    ),
          child: Center(
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: InkWell(
                      onTap: () {
                       setState(() {
                         leftDiceNumber = Random().nextInt(6) + 1;
                       });
                      },
                      child: Image.asset('images/dice$leftDiceNumber.jpg')),
                )),

                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: InkWell(
                      onTap: () {
                        setState(() {
                          rightDiceNumber = Random().nextInt(6) + 1;
                        });
                        },
                      child: Image.asset('images/dice$rightDiceNumber.jpg')),
                )),
                // Corrected the syntax here
              ],
            ),
          )

          // Embedding DiceApp here to display in the body
          ),
    ));
  }
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DiceApp(), // Use DiceApp which is properly defined
    );
  }
}
