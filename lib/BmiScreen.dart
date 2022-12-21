// ignore_for_file: use_key_in_widget_constructors, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, must_be_immutable

import 'dart:math';

import 'package:bmi_calculator/BmiResult.dart';
import 'package:flutter/material.dart';

class BmiCalculate extends StatefulWidget {
  @override
  State<BmiCalculate> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<BmiCalculate> {
  bool isMale = true;
  double height = 160.0;
  int age = 25;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Calculator'),
        backgroundColor: Colors.grey[900],
      ),
      body: Column(children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: isMale ? Colors.red[400] : Colors.grey[700],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            size: 100,
                            color: Colors.white,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: isMale ? Colors.grey[700] : Colors.red[400],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            size: 100,
                            color: Colors.white,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[700],
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('HEIGHT',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text('${height.round()}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900,
                        )),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text('cm',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
                Slider(
                    activeColor: Colors.black54,
                    inactiveColor: Colors.black12,
                    thumbColor: Colors.red,
                    value: height,
                    max: 220.0,
                    min: 80.0,
                    onChanged: (value) {
                      setState(() {
                        height = value;
                      });
                      print(value.round());
                    })
              ],
            ),
          ),
        )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('AGE',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          )),
                      Text('$age',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50.0,
                            fontWeight: FontWeight.w900,
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            backgroundColor: Colors.black54,
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                            heroTag: 'age-',
                            mini: true,
                            child: Icon(Icons.remove),
                          ),
                          FloatingActionButton(
                            backgroundColor: Colors.black54,
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            heroTag: 'age+',
                            mini: true,
                            child: Icon(Icons.add),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('WEIGHT',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          )),
                      Text('$weight',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50.0,
                            fontWeight: FontWeight.w900,
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            backgroundColor: Colors.black54,
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            heroTag: 'weight-',
                            mini: true,
                            child: Icon(Icons.remove),
                          ),
                          FloatingActionButton(
                            backgroundColor: Colors.black54,
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            heroTag: 'weight+',
                            mini: true,
                            child: Icon(Icons.add),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )),
        Container(
          color: Colors.red[700],
          width: double.infinity,
          child: MaterialButton(
            onPressed: () {
              double result = weight / pow(height / 100, 2);
              print(result.round());

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => bmiResult(
                      result: result,
                      isMale: isMale,
                      age: age,
                    ),
                  ));
            },
            height: 50.0,
            child: Text(
              'CALCULATE',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
