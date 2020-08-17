import 'package:flutter/material.dart';
import 'package:med_id/pages/GetStarted.dart';
import "package:med_id/pages/Intro.dart";
import 'package:med_id/pages/LoginScreen.dart';
import "package:med_id/pages/Finding.dart";

void main() =>
    runApp(MaterialApp(
      initialRoute: "/",
      routes: {
          "/": (context) => Intro(),
          "/getstarted": (context) => GetStarted(),
        "/loginscreen": (context) => LoginScreen(),
        "/findingscreen": (context) => Finding(),

      }
    ));
