import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  IconData icon;
  Function onPressed;

  RoundedIconButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(width: 50.0, height: 50.0),
      elevation: 0.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      onPressed: onPressed,
    );
  }
}
