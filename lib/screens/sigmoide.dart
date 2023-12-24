import 'dart:math';

import 'package:flutter/material.dart';
import 'package:projet2/screens/menu.dart';
import "package:numberpicker/numberpicker.dart";

class Sigmoide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyForm();
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  int number = 0;
  String result = '';

  double applySigmoid(value) {
    return 1 / (1 + exp(-value));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Menu(),
        appBar: AppBar(title:  Text("Sigmoid", style: TextStyle(color: Colors.white),), backgroundColor: Colors.lightBlue,  iconTheme: IconThemeData(color: Colors.white)),

        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 25.0),
              Image.asset("assets/images/sigmoid.png"),
              SizedBox(height: 50.0),
              Text(
                "Pick a number",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
              SizedBox(height: 10.0),
              NumberPicker(
                  selectedTextStyle: TextStyle(color: Colors.green, fontSize: 30.0),
                textStyle: TextStyle(color: Colors.blue),
                  axis: Axis.horizontal,
                  minValue: 0,
                  maxValue: 10,
                  value: number,
                  onChanged: (value) => setState(() {
                        number = value;
                        result = applySigmoid(number).toStringAsFixed(4);
                      })),
              SizedBox(height: 50.0),
              Text(
                result,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.red),
              ),
            ],
          ),
        ));
  }
}
