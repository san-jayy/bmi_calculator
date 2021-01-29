import 'package:flutter/material.dart';

// topcard- the top two containers..
class Topcard extends StatelessWidget {
  Topcard({this.icon, this.gender});
  final IconData icon;
  final String gender;
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
          gender,
          style: TextStyle(
              fontSize: 21.0,
              color: Color(0xFF303346),
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
