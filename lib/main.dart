import 'package:flutter/material.dart';
import 'package:med_id/pages/GetStarted.dart';
import 'package:med_id/pages/InRange.dart';
import "package:med_id/pages/Intro.dart";
import 'package:med_id/pages/LoginScreen.dart';
import "package:med_id/pages/Finding.dart";
import "package:med_id/pages/NameReg.dart";
import "package:med_id/pages/EmailScreen.dart";
import 'package:med_id/pages/VertScreen.dart';
void main() =>
    runApp(MaterialApp(
      theme: ThemeData(
        buttonTheme: ButtonThemeData(
          minWidth: 313,
          height: 50,
        )
      ),
      initialRoute: "/",
      routes: {
          "/": (context) => Intro(),
          "/getStartedScreen": (context) => GetStarted(),
        "/loginScreen": (context) => LoginScreen(),
        "/findingScreen": (context) => Finding(),
        "/nameRegScreen" : (context) => NameReg(),
        "/emailScreen" : (context) => EmailScreen(),
        "/vertScreen" : (context) => VertScreen(),
        "/inRangeScreen" : (context) => InRange()
      }
    ));
