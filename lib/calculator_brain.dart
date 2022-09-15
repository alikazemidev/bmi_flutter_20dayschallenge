import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double? _bmi;
  CalculatorBrain({required this.height, required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return 'overweight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getResultText() {
    if (_bmi! >= 25) {
      return 'you should eat less';
    } else if (_bmi! > 18.5) {
      return 'you are normal';
    } else {
      return 'you should eat more';
    }
  }
}
