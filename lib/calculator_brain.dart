// ignore_for_file: use_key_in_widget_constructors

import 'dart:math';
import 'package:flutter/material.dart';

class CalculatorBrain extends StatelessWidget {
  // final CalculatorBrain calculatorBrain = CalculatorBrain();
  CalculatorBrain({@required this.height, @required this.weight});

  final height;
  final weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
  // @override
  // Widget build(BuildContext context) {
  //   return const Placeholder();

  // }
}
