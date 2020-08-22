import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hexcolor/hexcolor.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 250, 0, 0),
            child: Column(
              children: <Widget>[
                Text("MED ID",
                    style: TextStyle(
                      fontSize: 64.0,
                      color: Hexcolor("2690F0"),
                      fontFamily: "OpenSans",
                    )),
                SizedBox(height: 200),
                Center(
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(
                          color: Colors.blue,
                          width: 1,
                        ),
                      ),
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, "/findingScreen");
                      },
                      padding: EdgeInsets.fromLTRB(80, 15, 80, 15),
                      child: Text("CONNECT MED ID",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "OpenSans",
                            letterSpacing: 2,
                          ))),
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
