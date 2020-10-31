import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(EightballMain());
}

class EightballMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Magic 8 Ball'),
          backgroundColor: Colors.indigoAccent.shade700,
        ),
        body: EightBall(),
        backgroundColor: Colors.indigo,
      ),
    );
  }
}

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int Eightballnumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    Eightballnumber = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('images/ball$Eightballnumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
