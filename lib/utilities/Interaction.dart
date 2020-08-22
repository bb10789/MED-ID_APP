import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import "package:med_id/utilities/constants.dart";

Widget _button(nameField, context) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: FlatButton(
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
          Navigator.pushNamed(context, "/findingScreen");
        },
        padding: EdgeInsets.fromLTRB(80, 15, 80, 15),
        child: Text(nameField,
            style: TextStyle(
              fontSize: 15,
              fontFamily: "OpenSans",
              letterSpacing: 2,
            ))),
  );
}
