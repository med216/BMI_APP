import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widget/icon_content.dart';
import '../widget/card_wideget.dart';
import 'Results.dart';
import '../formu/calc_bmi.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Home extends StatefulWidget {
  @override
  home createState() => home();
}

class home extends State<Home> {
  int maxim = 300;
  int w = 60;
  int a = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color(0xFF0f1438),
        appBar: AppBar(
          title: Text('BMI FLUTTER CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: cardwidget(
                    color: Color(0xFF272b4d),
                    widget: iconcontent(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: cardwidget(
                    color: Color(0xFF272b4d),
                    widget: iconcontent(
                      icon: FontAwesomeIcons.venus,
                      text: 'FAMEL',
                    ),
                  ),
                ),
              ),
            ])),
            Expanded(
              child: cardwidget(
                color: Color(0xFF272b4d),
                widget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xFF8D8E98),
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(maxim.toString(),
                              style: TextStyle(
                                fontSize: 50.0,
                                fontWeight: FontWeight.bold,
                              )),
                          Text(
                            'cm',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFF8D8E98),
                            ),
                          ),
                        ]),
                    Slider(
                        value: maxim.toDouble(),
                        min: 0.0,
                        max: 300.0,
                        activeColor: Color(0xFFEB1555),
                        inactiveColor: Color(0xFF8D8E98),
                        onChanged: (double v) {
                          setState(() {
                            maxim = v.round();
                          });
                        })
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(children: [
              Expanded(
                child: cardwidget(
                  color: Color(0xFF272b4d),
                  widget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'WEIGHT',
                      ),
                      Text(w.toString(),
                          style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w900,
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            backgroundColor: Color(0xFFEB1555),
                            onPressed: () {
                              setState(() {
                                w--;
                                if (w < 1) {
                                  w = 1;
                                  Alert(
                                    context: context,
                                    title: '!!!!!!!!',
                                    desc: 'Your \ WEIGHT must be Positive.',
                                  ).show();
                                }
                              });
                            },
                            heroTag: 'btn_1',
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          FloatingActionButton(
                            backgroundColor: Color(0xFFEB1555),
                            onPressed: () {
                              setState(() {
                                w++;
                              });
                            },
                            heroTag: 'btn_2',
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    cardwidget(
                      color: Color(0xFF272b4d),
                      widget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                          ),
                          Text(a.toString(),
                              style: TextStyle(
                                fontSize: 50.0,
                                fontWeight: FontWeight.w900,
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                backgroundColor: Color(0xFFEB1555),
                                onPressed: () {
                                  setState(() {
                                    a--;
                                    if (a < 1) {
                                      a = 1;
                                      Alert(
                                        context: context,
                                        title: '!!!!!!!!!',
                                        desc: 'Your \ AGE must be Positive.',
                                      ).show();
                                    }
                                  });
                                },
                                heroTag: 'btn_3',
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              FloatingActionButton(
                                backgroundColor: Color(0xFFEB1555),
                                onPressed: () {
                                  setState(() {
                                    a++;
                                  });
                                },
                                heroTag: 'btn_4',
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ])),
            GestureDetector(
              onTap: () {
                Calcbmi CALC = Calcbmi(H: maxim, W: w);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Results(
                              bmires: CALC.Calc_Bmi(),
                              restext: CALC.getRES(),
                              intrep: CALC.getINTER(),
                            )));
              },
              child: Container(
                child: Center(
                  child: Text('CALCULATE',
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 15.0),
                width: double.infinity,
                height: 70.0,
              ),
            )
          ],
        ));
  }
}
