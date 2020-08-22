import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

final kHintTextStyle = TextStyle(
  color: Colors.white54,
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Color(0xFF6CA8F1),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);

final mOutlineInputStyle = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      const Radius.circular(30.0),
    ),
    borderSide: BorderSide(
      width: 0.0,
      style: BorderStyle.none,
    ));

// Input Boxes for Customer info
final mBoxDecorationStyle = BoxDecoration(
    border: Border.all(
        color: Colors.transparent),
    borderRadius: BorderRadius.all(
        Radius.circular(30)),
    boxShadow: [
      BoxShadow(
        color:
        Colors.grey.withOpacity(0.1),
        spreadRadius: 1,
        blurRadius: 1,
        offset: Offset(0, 1),
      )
    ]);

Widget kText(String data,
    {double fontSize = 15,
      String fontFamily = "OpenSans",
      Color color = Colors.white}) {
  return Text(data,
      style:
      TextStyle(fontSize: fontSize, fontFamily: fontFamily, color: color, letterSpacing: 2),);
}

final mhintTextStyle = TextStyle(
fontSize: 15, color: Hexcolor("#38000000"), letterSpacing: 2
);

Widget instruct_Text(String data,
    {double fontSize = 15,
      String fontFamily = "OpenSans",
      Color color = Colors.white}) {
  return Text(data,
      style:
      TextStyle(fontSize: fontSize, fontFamily: fontFamily, color: Hexcolor("#21000000"), letterSpacing: 2));
}

