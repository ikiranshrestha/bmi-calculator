import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF060918),
        // accentColor: Color(0xFFEB1555),
        scaffoldBackgroundColor: Color(0xFF060918),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
