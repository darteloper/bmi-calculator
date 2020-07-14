import 'package:bmicalculator/bottom_button.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    'OVERWEIGHT',
                    style: kResultTextStyle,
                  ),
                  Text(
                    '26.7',
                    style: kBMITextStyle,
                  ),
                  Text(
                    'You have ...',
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            titleButton: 'RE-CALCULATE',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
