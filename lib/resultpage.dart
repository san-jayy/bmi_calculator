import 'package:bmi_calculator/Reusablecard.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'Bottombutton.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmiresult, this.resulttext, this.interpretation});
  final bmiresult;
  final resulttext;
  final interpretation;
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
                        resulttext.toString().toUpperCase(),
                        style: kresulttextstyle,
                      ),
                      Text(
                        bmiresult,
                        style: TextStyle(
                            fontSize: 99.0,
                            fontWeight: FontWeight.bold,
                            color: kbottomcontainercolor),
                      ),
                      Text(interpretation,
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
