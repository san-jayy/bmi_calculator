import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;

  String calculatebmi() {
    _bmi = weight / pow(height / 3.281, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (_bmi >= 25) {
      return 'over weight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else
      return 'under weight';
  }

  String interpretation() {
    if (_bmi >= 25) {
      return 'You have higher than a normal body weight';
    } else if (_bmi > 18.5) {
      return 'Great!.You have a normal body weight';
    } else
      return 'Ohh...you have weight lower than a normal body weight';
  }
}
