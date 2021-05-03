import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/resusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/result_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmi,
      @required this.bmiResult,
      @required this.bmiInterpretation});
  final String bmiResult;
  final String bmiInterpretation;
  final String bmi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: kResultTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    bmiResult.toUpperCase(),
                    style: kResultTextTextStyle,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    bmi,
                    style: kResultDigitStyle,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    bmiInterpretation,
                    style: kResultInterpretationStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          ResultButton(
            buttonLabel: "Re-Calculate",
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
