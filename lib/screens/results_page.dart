import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import '../component/bottom_button.dart';
import '../component/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CACULATOR')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              child: ReusableCard(
                kActiveCardColour,
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Normal',
                      style: kResultTextStyle,
                    ),
                    Text(
                      '18.3',
                      style: kBMITextStyle,
                    ),
                    Text(
                      'Your BMI result is quite low, you should eat more!',
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                () {},
              ),
            ),
          ),
          BottomButton(
            () {
              Navigator.pop(context);
            },
            'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
