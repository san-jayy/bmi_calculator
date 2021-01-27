import 'package:flutter/material.dart';
import 'main.dart';

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
                Container(
                  height: 200.0,
                  width: 170.0,
                  margin: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(5)),
                ),
                Container(
                  height: 200.0,
                  width: 170.0,
                  margin: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(5)),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 200.0,
                  // width: 170.0,
                  margin: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(5)),
                ),
              )
            ],
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  height: 200.0,
                  width: 170.0,
                  margin: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(5)),
                ),
                Container(
                  height: 200.0,
                  width: 170.0,
                  margin: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(5)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
