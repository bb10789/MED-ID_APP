import 'package:flutter/material.dart';
import 'package:med_id/pages/GetStarted.dart';
import "package:med_id/pages/Intro.dart";

void main() =>
    runApp(MaterialApp(
      routes: {
          "/": (context) => GetStarted(),
      }
    ));
