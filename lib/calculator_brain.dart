import 'package:bmi_calculator_flutter/screens/input_page.dart';


import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;

  String calculateBMI(){
    _bmi = weight / pow(height / 100, 2);
    _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if (_bmi >= 25){
      return 'Overweight';
    }
    else if(_bmi > 18){
      return 'Normal';
    }
    else {
        return 'Underweight';
      }
  }

  String getInterpretation(){
    if (_bmi >= 25){
      return 'You have higher than normal body weight, you need to exercise more!';
    }
    else if(_bmi > 18){
      return 'You have a normal body weight, Great job!';
    }
    else {
      return 'You have a lower than normal body weight, you can eat a bit more!';
    }
  }
}