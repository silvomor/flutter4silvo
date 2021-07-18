import 'package:flutter/material.dart';
import 'package:bmiapp/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonName, @required this.onTap});
  final Function onTap;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonName,
            style: kLargeButtonStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomHeight,
      ),
    );
  }
}
