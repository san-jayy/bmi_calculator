import 'package:flutter/material.dart';
import 'main.dart';

const bottomcontainerheight = 75.0;
const bottomcontainercolor = Color(0xFF303346);
const activecardcolor = Color(0xFFA7AAB3);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(fontSize: 18),
        ),
      ),
      // body: Container(
      //   height: 200.0,
      //   width: 170.0,
      //   margin: EdgeInsets.all(12),
      //   decoration: BoxDecoration(
      //       color: Color(0xFF1D1E33), borderRadius: BorderRadius.circular(5)),
      // ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: Reusablecard(colour: activecardcolor)),
                Expanded(child: Reusablecard(colour: activecardcolor)),
              ],
            ),
          ),
          Expanded(
            child: Reusablecard(colour: activecardcolor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Reusablecard(colour: activecardcolor)),
                Expanded(child: Reusablecard(colour: activecardcolor)),
              ],
            ),
          ),
          Container(
            color: bottomcontainercolor,
            margin: EdgeInsets.only(top: 20),
            height: bottomcontainerheight,
          )
        ],
      ),
    );
  }
}

class Reusablecard extends StatelessWidget {
  Reusablecard({this.colour});
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration:
          BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
    );
  }
}
