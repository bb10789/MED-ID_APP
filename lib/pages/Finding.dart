import 'package:flutter/material.dart';
import "package:med_id/utilities/constants.dart";
import 'package:lottie/lottie.dart';
import 'package:hexcolor/hexcolor.dart';

class Finding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: backArrow(context),
        body: GestureDetector(
          child: Stack(
            fit: StackFit.expand,
            overflow: Overflow.clip,
            children: <Widget>[
              FractionalTranslation(
                translation: Offset(0.0, 0.25),
                child: Column(
                  children: <Widget>[
                    Text("Hold Med ID near your phone",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Hexcolor("#48003C73"),
                          fontFamily: "OpenSans",
                          letterSpacing: 2,
                        )),
                  ],
                ),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height - screenHeight / 2,
                  child: Lottie.asset("assets/blue-circle.json",
                  width: screenWidth, height: screenHeight)),
              Align(
                  alignment: Alignment.bottomCenter,
                  child:
                      Padding(
                        padding: const EdgeInsets.only(bottom: 26.0),
                        child: navButton("FINDING MED ID...", context, "/nameRegScreen"),
                      )),

            ],
          ),
        )
        );
  }
}
