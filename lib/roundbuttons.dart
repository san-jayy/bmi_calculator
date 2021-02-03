import 'package:flutter/material.dart';
import 'constants.dart';

class Roundbutton extends StatelessWidget {
  Roundbutton({this.icon, this.onpress});
  final IconData icon;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onpress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 50, height: 50),
      shape: CircleBorder(),
      fillColor: kbottomcontainercolor,
    );
  }
}
