import 'package:flutter/material.dart';
import 'dart:math';

class BodyContainer extends StatefulWidget {
  @override
  _BodyContainerState createState() => _BodyContainerState();
}

class _BodyContainerState extends State<BodyContainer> {
  int number1 = 1;
  int number2 = 1;
  int number3 = 1;
  int number4 = 1;
  int number5 = 1;
  int number6 = 1;

  var list = new List<int>.generate(55, (int index) => index);
  void randomNumber() {
    list.shuffle();
    list.sublist(0, 5);
    setState(() {
      number1 = list[0];
      number2 = list[1];
      number3 = list[2];
      number4 = list[3];
      number5 = list[4];
      number6 = list[5];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Random number for vietlot user"),
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Number(number: number1),
                Number(number: number2),
              ],
            ),
            Row(
              children: <Widget>[
                Number(number: number3),
                Number(number: number4),
              ],
            ),
            Row(
              children: <Widget>[
                Number(number: number5),
                Number(number: number6),
              ],
            ),
            GestureDetector(
              onTap: () {
                randomNumber();
              },
              child: Container(
                color: Color(0xFF1D1E33),
                margin: EdgeInsets.all(15.0),
                width: double.infinity,
                height: 50.0,
                child: Center(
                  child: Text(
                    "Get new lucky numbers",
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white60,
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

class Number extends StatelessWidget {
  Number({@required this.number});
  final int number;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text(
              number.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Color(0xFF1D1E33),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
