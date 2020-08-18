import 'package:flutter/material.dart';
import 'package:med_id/pages/GetStarted.dart';
import "package:med_id/pages/Intro.dart";
import 'package:med_id/pages/LoginScreen.dart';
import "package:med_id/pages/Finding.dart";
import "package:med_id/pages/NameReg.dart";

<<<<<<< HEAD
import 'pages/PairingView.dart';

void main() => runApp(MaterialApp(initialRoute: "/", routes: {
      "/": (context) => PairingView(),
      "/getstarted": (context) => GetStarted(),
      "/loginscreen": (context) => LoginScreen(),
      "/findingscreen": (context) => Finding(),
    }));
=======
void main() =>
    runApp(MaterialApp(
      initialRoute: "/nameRegscreen",
      routes: {
          "/": (context) => Intro(),
          "/getstarted": (context) => GetStarted(),
        "/loginscreen": (context) => LoginScreen(),
        "/findingscreen": (context) => Finding(),
        "/nameRegscreen" : (context) => NameReg(),
      }
    ));
>>>>>>> f690e20bbe9df4ab41b76b8cde01a20a9b4308b9
