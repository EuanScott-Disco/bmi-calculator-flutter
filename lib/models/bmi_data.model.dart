class BMIData {
  String bmi;
  String bmiStatus;
  String bmiInterpretation;

  BMIData({this.bmi, this.bmiStatus, this.bmiInterpretation});
}

enum ResultText {
  OVERWEIGHT,
  NORMAL,
  UNDERWEIGHT,
}

enum Gender {
  Male,
  Female,
}
