import 'package:flutter/material.dart';
import 'Screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Color(0xFF0F0F1E),
        ),
        scaffoldBackgroundColor: Color(0xFF0F0F1E),
      ),
      home: InputPage(),
    );
  }
}
