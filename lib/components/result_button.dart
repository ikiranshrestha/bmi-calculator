import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class ResultButton extends StatelessWidget {
  const ResultButton({@required this.buttonLabel, @required this.onPressed});

  final String buttonLabel;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonLabel.toUpperCase(),
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
