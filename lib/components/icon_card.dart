import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/constants.dart';


class IconCard extends StatelessWidget {


  final IconData icon ;
  final String gender;
  IconCard({@required this.icon, @required this.gender});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gender,
          style: labelStyle
        )
      ],
    );
  }
}