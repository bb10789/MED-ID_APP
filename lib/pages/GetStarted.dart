import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import "package:med_id/utilities/constants.dart";

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 300, 0, 0),
            child: Column(
              children: <Widget>[
                Image.asset("assets/logo_blue.png"),
                SizedBox(height: 200),
                Center(
                  child: navButton("CONNECT MED ID", context, "/findingScreen")
                ),
                SizedBox(height: 10),
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                    side: BorderSide(color: Colors.transparent),
                  ),
                  onPressed: () {},
                  padding: EdgeInsets.fromLTRB(80, 20, 80, 20),
                  textColor: Colors.grey,
                  child: Text("Or order a Med ID",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "OpenSans",
                          letterSpacing: 2)),
                )
              ],
            ),
          ),
        ));
  }
}
