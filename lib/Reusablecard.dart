import 'package:flutter/material.dart';
// common widget properties for all the containers

class Reusablecard extends StatelessWidget {
  Reusablecard({this.colour, this.cardchild, this.onpress});
  final Color colour;
  final Widget cardchild;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardchild,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
