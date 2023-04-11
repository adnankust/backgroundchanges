import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color _backgroundColor = Colors.white; // Initial background color

  void _changeBackgroundColor() {
    setState(() {
      // Randomly change the background color
      _backgroundColor = _getRandomColor();
    });
  }

  Color _getRandomColor() {
    // Generate a random color
    Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: _backgroundColor, // Set the background color
        appBar: AppBar(
          title: Text('Random Colors'),
        ),
        body: Center(
          child: GestureDetector(
            onTap: _changeBackgroundColor,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.white,
              child: Center(
                child: Text(
                  'Tap to change color',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
