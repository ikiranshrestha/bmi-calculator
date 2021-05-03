import 'dart:math';

class CalculationLogic {
  CalculationLogic({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculteBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight.\nTry to Exercise More!';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight!\nWell done!';
    } else {
      return 'You have a lower than normal body weight.\nConsider putting up some weight';
    }
  }
}
