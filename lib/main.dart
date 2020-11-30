import 'package:flutter/material.dart';
 import 'screen/home.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21), 
        accentColor: Colors.purple,
        scaffoldBackgroundColor: Color(0xFF0f1438),
     

      ),
      home: Home(),
    );
  }
}