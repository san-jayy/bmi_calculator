import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.buttoblabel, this.ontap});
  final Function ontap;
  final String buttoblabel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      // onTap: () {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => ResultPage()),
      //   );
      // },
      child: Container(
        child: Center(
          child: Text(
            buttoblabel,
            style: kbottomtextstyle,
          ),
        ),
        color: kbottomcontainercolor,
        margin: EdgeInsets.only(top: 20),
        height: kbottomcontainerheight,
      ),
    );
  }
}
