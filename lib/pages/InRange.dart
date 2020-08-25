import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "package:med_id/utilities/constants.dart";

class InRange extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: hamburgerBlue(context),
      drawer: Drawer(
        child: Text("Drawer")
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Stack(
            fit:StackFit.expand,
            children: <Widget> [
            FractionalTranslation(
            translation: Offset(0.0, 0.25),
            child: Column(
              children: <Widget>[
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle
                  ),
                  child: Image.asset("assets/check.png")
                ),
                SizedBox(height: 15),
                Text("MED ID IN RANGE"),

              ],
            ),
          ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: navButton("STATUS: LOW RISK", context, "")
              )
    ]
        ),
      )
    );
  }
}
