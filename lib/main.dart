import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF303346),
          scaffoldBackgroundColor: Color(0xFFFFFFFF),
          accentColor: Color(0xFFFFFFFF),
          textTheme: TextTheme(body1: TextStyle(color: Colors.white))),
      home: InputPage(),
    );
  }
}
