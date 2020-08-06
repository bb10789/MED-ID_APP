import 'package:flutter/material.dart';
import "package:hexcolor/hexcolor.dart";

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Hexcolor("2690F0"),
      body: Center(
        child: Text("MED ID",
        style: TextStyle(
          fontSize: 64.0,
          color: Colors.white,
          fontFamily: "OpenSans",
        )
        )
      )
    );
  }
}
