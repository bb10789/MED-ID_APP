import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Finding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 250, 0, 0),
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
                      },
                      padding: EdgeInsets.fromLTRB(80, 20, 80, 20),
                      child: Text("Finding MED ID",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "OpenSans",
                            letterSpacing: 2,
                          ))),
                ),
              ],
            ),
          ),
        ));
  }
}
