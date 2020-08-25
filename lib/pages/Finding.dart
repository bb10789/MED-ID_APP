import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import "package:med_id/utilities/constants.dart";

class Finding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: backArrow(context),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
            child: Column(
              children: <Widget>[
                Text("Hold Med ID near your phone",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Hexcolor("#48003C73"),
                      fontFamily: "OpenSans",
                      letterSpacing: 2,
                    )),
                SizedBox(height: 300),
                Center(
                  child: navButton("FINDING MED ID...", context, "/nameRegScreen"),
                ),
              ],
            ),
          ),
        ));
  }
}
