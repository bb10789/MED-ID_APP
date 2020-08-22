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



  Widget _button(nameField, context) {
    return Align(
      alignment: Alignment.bottomCenter,
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
            Navigator.pushNamed(context, "/vertScreen");
          },
          padding: EdgeInsets.fromLTRB(80, 15, 80, 15),
          child: Text(nameField,
              style: TextStyle(
                fontSize: 15,
                fontFamily: "OpenSans",
                letterSpacing: 2,
              ))),
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
                  instruct_Text("We use this to notify you"),
                  instruct_Text("for any recent activity")
                ]))
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          child: Container(
              padding: EdgeInsets.all(26),
              child: Stack(
                children: <Widget>[
                  _textFields(),
                  SizedBox(height: 50),
                  _button("NEXT", context),
                ],
              ))),
    );
  }
}
