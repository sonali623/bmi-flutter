import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
//import 'package:bmi_calculator/calculator_brain.dart';


class ResultPage extends StatelessWidget {
  final String result;
  final String val;
  final String desc;

  ResultPage({@required this.val,@required this.result,@required this.desc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR'),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
              child:Container(
                child: Text('Your Result',style: resultStyle,),
              )
          ),
          Expanded(
            flex: 5,
              child: ReusableCard(
                colour: cardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(result,style: greenStyle,),
                    Text(val,style: TextStyle(fontSize: 100.0,fontWeight: FontWeight.bold),),
                    Text(desc,style: TextStyle(fontSize: 20.0),textAlign: TextAlign.center,)
                  ],
                ),
              )
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              child: Center(child: Text('RE-CALCULATE',style: footerStyle,)),
              color: Colors.pinkAccent,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,
            ),
          ),
        ],
      )
    );
  }
}
