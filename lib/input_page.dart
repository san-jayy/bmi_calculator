import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Reusablecard.dart';
import 'topcards.dart';
import 'constants.dart';

enum Gender { male, female }
double height = 5;
int weight = 60;
int age = 20;

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                        ? kactivecolor
                        : kinactivecardcolor,
                    cardchild: Topcard(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
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
                        ? kactivecolor
                        : kinactivecardcolor,
                    cardchild: Topcard(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Reusablecard(
              colour: kinactivecardcolor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: klabeltextstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        // '6.00',
                        height.toStringAsFixed(2),
                        style: knumberstyle,
                      ),
                      Text('Feet', style: klabeltextstyle),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    activeColor: kbottomcontainercolor,
                    inactiveColor: kactivecolor,
                    min: 3.0,
                    max: 8.0,
                    onChanged: (value) {
                      // print(value);
                      setState(() {
                        height = value;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Reusablecard(
                    colour: kinactivecardcolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: klabeltextstyle,
                        ),
                        Text(
                          weight.toString(),
                          style: knumberstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Roundbutton(
                              icon: FontAwesomeIcons.minus,
                              onpress: () {
                                setState(() {
                                  if (weight > 0) {
                                    weight--;
                                  }
                                });
                              },
                            ),
                            SizedBox(
                              width: 12.0,
                            ),
                            Roundbutton(
                              icon: FontAwesomeIcons.plus,
                              onpress: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Reusablecard(
                    colour: kinactivecardcolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: klabeltextstyle,
                        ),
                        Text(
                          age.toString(),
                          style: knumberstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Roundbutton(
                              icon: FontAwesomeIcons.minus,
                              onpress: () {
                                setState(() {
                                  if (age > 0) {
                                    age--;
                                  }
                                });
                              },
                            ),
                            SizedBox(
                              width: 12.0,
                            ),
                            Roundbutton(
                              icon: FontAwesomeIcons.plus,
                              onpress: () {
                                setState(() {
                                  age++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kbottomcontainercolor,
            margin: EdgeInsets.only(top: 20),
            height: kbottomcontainerheight,
          )
        ],
      ),
    );
  }
}

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
