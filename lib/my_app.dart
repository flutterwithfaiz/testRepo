import 'package:flutter/material.dart';
import 'package:testapp/home_page.dart';

/// First Class Which builds app.
class MyApp extends StatelessWidget {
  /// Constructor of first class
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
