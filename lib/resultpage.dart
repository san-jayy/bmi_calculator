import 'package:bmi_calculator/Reusablecard.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'Bottombutton.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          backgroundColor: kbottomcontainercolor,
        ),
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Expanded(
                    child: Text(
                  'Your result',
                  style: knumberstyle,
                )),
              ),
              Expanded(
                flex: 5,
                child: Reusablecard(
                  colour: kinactivecardcolor,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Normal',
                        style: kresulttextstyle,
                      ),
                      Text(
                        '30.0',
                        style: TextStyle(
                            fontSize: 99.0,
                            fontWeight: FontWeight.bold,
                            color: kbottomcontainercolor),
                      ),
                      Text('some random messange related to bmi calculator',
                          style: TextStyle(
                              color: kbottomcontainercolor, fontSize: 26),
                          textAlign: TextAlign.center)
                    ],
                  ),
                ),
              ),
              BottomButton(
                buttoblabel: 'RE-CALCULATE',
                ontap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ));
  }
}
