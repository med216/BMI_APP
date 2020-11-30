import 'package:flutter/material.dart';
import '../widget/card_wideget.dart';

class Results extends StatelessWidget {
  Results(
      {@required this.bmires, @required this.restext, @required this.intrep});
  final String bmires;
  final String restext;
  final String intrep;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
            padding: EdgeInsets.all(30.0),
            child: Text('YOUR RESULT',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                )),
          )),
          Expanded(
            flex: 5,
            child: cardwidget(
              color: Color(0xFF272b4d),
              widget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(restext,
                      style: TextStyle(
                        color: Color(0xFF24D876),
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      )),
                  Text(
                    bmires,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    intrep,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Text('RECALCULATE',
                    style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.w900,
                    )),
              ),
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 15.0),
              width: double.infinity,
              height: 70.0,
            ),
          )
        ],
      ),
    );
  }
}
