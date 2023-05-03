import 'dart:math' as math;

import 'package:flutter/material.dart';

///Home page of the app
class HomePage extends StatefulWidget {
  ///constructor
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color backgroundColor = Colors.white;
  Color fontColor = Colors.black;
  int colorBase = 0xFFFFFF;
  double fontSize = 18;

  Color getTextColorForBackground(Color backgroundColor) {
    if (ThemeData.estimateBrightnessForColor(backgroundColor) ==
        Brightness.dark) {
      return Colors.white70;
    }

    return Colors.black87;
  }

  void _changeColor() {
    setState(() {
      backgroundColor = Color((math.Random().nextDouble() * colorBase).toInt())
          .withOpacity(1.0);
      fontColor = getTextColorForBackground(backgroundColor);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello There',
                style: TextStyle(fontSize: fontSize, color: fontColor),
              ),
            ],
          ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
      onTap: () {
        _changeColor();
      },
    );
  }
}
