import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import "package:med_id/utilities/constants.dart";
import "package:med_id/utilities/Interaction.dart";

class VertScreen extends StatelessWidget {
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
            _inputTF("Verification code"),
            SizedBox(height: 50),
            Container(
                width: 250,
                child: Column(children: <Widget>[
                  instructText("Please verify your email with"),
                  instructText("the code we sent to you")
                ]))
          ],
        ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backArrow(context ),
      body: GestureDetector(
          child: Container(
              padding: EdgeInsets.all(26),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 70),
                    child: _textFields(),
                  ),
                  Align( alignment: Alignment.bottomCenter,
                      child: navButton("NEXT", context, "")),
                ],
              ))),
    );
  }
}
