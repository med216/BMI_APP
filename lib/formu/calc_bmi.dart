import 'dart:math';

class Calcbmi {
  Calcbmi({this.H, this.W});
  final int H;
  final int W;

  double _Bmi;

  String Calc_Bmi() {
    _Bmi = W / pow(H / 100, 2);
    return _Bmi.toStringAsFixed(1);
  }

  String getRES() {
    if (_Bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_Bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getINTER() {
    if (_Bmi >= 25) {
      return 'higher weight';
    } else if (_Bmi > 18.5) {
      return ' normal weight  ';
    } else {
      return 'low weight';
    }
  }
}
