import 'package:flutter/material.dart';
import 'package:flutter_change_color_screen/pages/home_page.dart';

void main() {
  runApp(const Main());
}

/// Main class of the app
class Main extends StatelessWidget {
  ///constructor
  const Main({super.key});

  @override

  /// Build of material app
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
