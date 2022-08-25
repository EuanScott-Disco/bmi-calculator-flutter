import 'dart:math';

import 'package:bmi_calculator/models/bmi_data.model.dart';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  BMIData _bmiData = BMIData();

  void calculateBMI() {
    double calculatedBmi = weight / pow(height / 100, 2);

    _bmiData.bmi = calculatedBmi.toStringAsFixed(1);

    if (calculatedBmi >= 25) {
      _bmiData.bmiStatus = ResultText.OVERWEIGHT.name;
      _bmiData.bmiInterpretation =
          'You have a higher than normal body weight. Try to exercise more.';
    } else if (calculatedBmi > 18.5) {
      _bmiData.bmiStatus = ResultText.NORMAL.name;
      _bmiData.bmiInterpretation = 'You have a normal body weight. Good job!';
    } else {
      _bmiData.bmiStatus = ResultText.UNDERWEIGHT.name;
      _bmiData.bmiInterpretation =
          'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  BMIData getBMI() {
    return _bmiData;
  }
}
