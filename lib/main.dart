import 'package:flutter/material.dart';
//import 'components/screens/input_page.dart';
import 'screens/input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor:const Color(0xFFFFFFFF), scaffoldBackgroundColor: const Color(0xFF0A0E21)
      ),
      home: const InputPage(),
    );
  }
}