import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "package:med_id/utilities/constants.dart";
import 'package:lottie/lottie.dart';

class InRange extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: hamburgerBlue(context),
        drawer: Drawer(
          child:ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      
                    ],
                  )
                )
              ),
              ListTile(
                title: Text("Logout")
              )
            ],
          )
        ),
        body: Stack(fit: StackFit.expand, children: <Widget>[
          FractionalTranslation(
            translation: Offset(0.0, 0.25),
            child: Column(
              children: <Widget>[
                blueCheck(),
                SizedBox(height: 15),
                kText("MED ID IN RANGE", color: Colors.blue),
              ],
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height - screenHeight / 2,
              child: Lottie.asset("assets/blue-circle.json",
                  width: screenWidth, height: screenHeight)),
          Padding(
            padding: const EdgeInsets.all(26.0),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: navButton("STATUS: LOW RISK", context, "")),
          ),
        ]));
  }
}
