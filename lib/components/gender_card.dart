import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class GenderCard extends StatelessWidget {
  GenderCard({@required this.genderIcon, @required this.genderLabel});
  final IconData genderIcon;
  final String genderLabel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          this.genderIcon,
          size: 80,
          color: kLabelIconColor,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          this.genderLabel.toUpperCase(),
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
