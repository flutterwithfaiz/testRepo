import 'dart:math';

import 'package:flutter/material.dart';

/// Home Screen called from material app.
class HomePage extends StatefulWidget {
  /// Constant constructor of homePage class.
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePage> {
  Color color = Colors.white;
  final double half = 0.5;
  Future<void> changeColor() async {
    final Random random = Random();
    final int red = random.nextInt(255);
    final int green = random.nextInt(255);
    final int blue = random.nextInt(255);
    setState(() {
      color = Color.fromRGBO(
        red,
        green,
        blue,
        1,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: InkWell(
        onTap: changeColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Hey There',
                style: TextStyle(
                  color: checkLum() ? Colors.black : Colors.white,
                ),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  bool checkLum() => color.computeLuminance() > half;
}
