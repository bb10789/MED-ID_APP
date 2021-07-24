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
      TextStyle(fontSize: fontSize, fontFamily: fontFamily, color: color, letterSpacing: 2,  fontWeight: FontWeight.w700),);
}

final mhintTextStyle = TextStyle(
fontSize: 15, color: Hexcolor("#38000000"), letterSpacing: 2
);

Widget instructText(String data,
    {double fontSize = 15,
      String fontFamily = "OpenSans",
      Color color = Colors.white}) {
  return Text(data,
      style:
      TextStyle(fontSize: fontSize, fontFamily: fontFamily, color: Hexcolor("#21000000"), letterSpacing: 2));
}

Widget navButton(String nameField, BuildContext context, String dest) {
  return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: BorderSide(
          color: Colors.blue,
          width: 1,
        ),
      ),
      color: Colors.blue,
      textColor: Colors.white,
      onPressed: () {
        Navigator.pushNamed(context, dest);
      },
      padding: EdgeInsets.fromLTRB(80, 15, 80, 15),
      child: Text(nameField,
          style: TextStyle(
            fontSize: 15,
            fontFamily: "OpenSans",
            letterSpacing: 2,
          )));
}

Widget backArrow(BuildContext context) {
  return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0.0,
      iconTheme: IconThemeData(
      color: Colors.blue,
  )
  );
}

Widget hamburgerBlue(BuildContext context) {
  return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0.0,
      iconTheme: IconThemeData(
        color: Hexcolor("BFDEFB"),
      )
  );
}

Widget blueCheck() {
  return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
          color: Colors.blue, shape: BoxShape.circle),
      child: Image.asset("assets/check.png"));
}