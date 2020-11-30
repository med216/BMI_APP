import 'package:flutter/material.dart';

class iconcontent extends StatelessWidget {
  iconcontent({@required this.icon, this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 88.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(text,
            style: TextStyle(
              fontSize: 18.0,
              color: Color(0xFF8D8E98),
            ))
      ],
    );
  }
}
