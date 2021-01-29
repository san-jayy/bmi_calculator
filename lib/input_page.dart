import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Reusablecard.dart';
import 'topcards.dart';

const bottomcontainerheight = 75.0;
const bottomcontainercolor = Color(0xFF303346);
const activecardcolor = Color(0xFFA7AAB3);
const inactivecardcolor = Color(0xFFD6D6D6);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedgender;

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
                Expanded(
                  child: Reusablecard(
                    onpress: () {
                      setState(() {
                        selectedgender = Gender.male;
                      });
                    },
                    colour: selectedgender == Gender.male
                        ? activecardcolor
                        : inactivecardcolor,
                    cardchild: Topcard(
                      icon: FontAwesomeIcons.mars,
                      gender: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: Reusablecard(
                    onpress: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                    colour: selectedgender == Gender.female
                        ? activecardcolor
                        : inactivecardcolor,
                    cardchild: Topcard(
                      icon: FontAwesomeIcons.venus,
                      gender: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Reusablecard(colour: inactivecardcolor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Reusablecard(colour: inactivecardcolor),
                ),
                Expanded(
                  child: Reusablecard(
                    colour: inactivecardcolor,
                    cardchild: Column(
                      children: [],
                    ),
                  ),
                ),
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
