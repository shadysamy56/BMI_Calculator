// ignore_for_file: use_key_in_widget_constructors, unused_import, prefer_const_constructors

import 'package:bmi_calculator/BmiResult.dart';
import 'package:bmi_calculator/BmiScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiCalculate(),
    );
  }
}
