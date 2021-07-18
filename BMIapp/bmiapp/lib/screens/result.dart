import 'package:bmiapp/components/bottomButton.dart';
import 'package:bmiapp/constants.dart';
import 'package:bmiapp/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  
  ResultPage(@required this.bmi, @required this.result , @required this.comment);

  final String bmi;
  final String result;
  final String comment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI RESULT'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                "Results",
                style: kSymbolTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveWidgetColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    result,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmi,
                    style: kBMIStyle,
                  ),
                  Center(
                    child: Text(
                      comment,
                      style: kCommentStyle,
                    ),
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            buttonName: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
