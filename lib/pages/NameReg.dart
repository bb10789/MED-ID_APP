import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import "package:med_id/utilities/constants.dart";

class NameReg extends StatelessWidget {
  Widget _firstNameTextField() {
    return TextFormField(
        keyboardType: TextInputType.text,
        style: TextStyle(
          color: Hexcolor("#000000"),
          fontFamily: "OpenSans",
        ),
        decoration: InputDecoration(
            border: mOutlineInputStyle,
            contentPadding: EdgeInsets.only(left: 40, top: 20, bottom: 20),
            hintText: "First Name",
            hintStyle: TextStyle(fontSize: 18, color: Hexcolor("#38000000")),
            fillColor: Colors.white,
            filled: true));
  }

  Widget _lastNameTextField() {
    return TextFormField(
        keyboardType: TextInputType.text,
        style: TextStyle(
          color: Hexcolor("#000000"),
          fontFamily: "OpenSans",
        ),
        decoration: InputDecoration(
            border: mOutlineInputStyle,
            contentPadding: EdgeInsets.only(left: 40, top: 20, bottom: 20),
            hintText: "Last Name",
            hintStyle: TextStyle(fontSize: 18, color: Hexcolor("#38000000")),
            fillColor: Colors.white,
            filled: true));
  }

  Widget _textFields() {
    return FractionalTranslation(
      translation: Offset(0.0, 0.25),
      child: Column(
        children: [
          _firstNameTextField(),
          SizedBox(height: 25),
          _lastNameTextField()
        ],
      ),
    );
  }

  Widget _nextButton(context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
              Navigator.pushNamed(context, "/findingscreen");
            },
            child: Container(
              height: 40, // TODO: Calculate propotional size
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(30)),
              alignment: Alignment.center,
              child: Text("NEXT",
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: "OpenSans",
                      letterSpacing: 2,
                      color: Colors.white)),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget _stackView = Stack(
      children: [_textFields(), _nextButton(context)],
    );

    return GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Scaffold(
            body: Container(
          padding: EdgeInsets.all(16),
          child: _stackView,
        )));
  }
}
