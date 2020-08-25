import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import "package:med_id/utilities/constants.dart";

class EmailScreen extends StatelessWidget {
  Widget _inputTF(fieldName) {
    return TextFormField(
      keyboardType: TextInputType.text,
      style: TextStyle(
        color: Hexcolor("#000000"),
        fontFamily: "OpenSans",
      ),
      textAlign: TextAlign.left,
      decoration: InputDecoration(
        border: mOutlineInputStyle,
        contentPadding: EdgeInsets.only(left: 40, top: 20, bottom: 20),
        hintText: fieldName,
        hintStyle: mhintTextStyle,
        fillColor: Colors.white,
        filled: true,
      ),
    );
  }



  Widget _textFields() {
    return FractionalTranslation(
        translation: Offset(0.0, 0.25),
        child: Column(
          children: <Widget>[
            _inputTF("Email"),
            SizedBox(height: 50),
            Container(
                width: 220,
                child: Column(children: <Widget>[
                  instructText("We use this to notify you"),
                  instructText("for any recent activity")
                ]))
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backArrow(context),
      body: GestureDetector(
          child: Container(
              padding: EdgeInsets.all(26),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 70),
                    child: _textFields(),
                  ),
                  Align(alignment: Alignment.bottomCenter,
                      child: navButton("NEXT", context, "/vertScreen")),
                ],
              ))),
    );
  }
}
