import 'package:flutter/material.dart';
import 'constants.dart';

// topcard- the top two containers..
class Topcard extends StatelessWidget {
  Topcard({this.icon, this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Color(0xFF303346),
          size: 90.0,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          label,
          style: klabeltextstyle,
        )
      ],
    );
  }
}
