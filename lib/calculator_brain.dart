import 'dart:math';

class CalculatorBrain{

  int height;
  int weight;
  double _bmi;
  CalculatorBrain({this.weight,this.height});

  String getBMI(){
    double h = (height/100);
    _bmi = weight/pow(h,2);
    String res = _bmi.toStringAsFixed(1);
    return res;
  }

  String getResult(){
    if(_bmi >= 25){
      return 'OVERWEIGHT';
    }else if(_bmi > 18){
      return 'NORMAL';
    }else{
      return 'UNDERWEIGHT';
    }
  }

  String getDescription(){
    if(_bmi >= 25){
      return 'You have a higher than normal body weight. Try some exercise.';
    }else if(_bmi > 18){
      return 'You have a normal body weight. Good Job.';
    }else{
      return 'Maybe you should eat a bit more,';
    }
  }
}