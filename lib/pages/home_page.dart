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
  int colorBase = 0xFFFFFF;

  void _changeColor() {
    setState(() {
      backgroundColor = Color((math.Random().nextDouble() * colorBase).toInt())
          .withOpacity(1.0);
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
            children: const [
              Text(
                'Hello There',
                style: TextStyle(fontSize: 18),
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
