import 'package:flutter/material.dart';
import "package:hexcolor/hexcolor.dart";

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {

  void delay() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, '/getstarted');
  }

  void initState()  {
    delay();
  }
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
