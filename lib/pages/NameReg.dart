import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import "package:med_id/utilities/constants.dart";



class NameReg extends StatelessWidget {

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

//  Widget _button(nameField) {
//    return FlatButton(
//        shape: RoundedRectangleBorder(
//          borderRadius: BorderRadius.circular(30),
//          side: BorderSide(
//            color: Colors.blue,
//            width: 1,
//          ),
//        ),
//        color: Colors.blue,
//        textColor: Colors.white,
//        onPressed: () {
//          //Navigator.pushNamed(context, "/emailScreen");
//        },
//        padding: EdgeInsets.fromLTRB(80, 15, 80, 15),
//        child: Text(nameField,
//            style: TextStyle(
//              fontSize: 15,
//              fontFamily: "OpenSans",
//              letterSpacing: 2,
//            )));
//  }



  Widget textFields() {
    return FractionalTranslation(
      translation: Offset(0.0, 0.25),
      child: Column(
        children: <Widget>[
          _inputTF("First Name"),
          SizedBox(height: 26),
          _inputTF("Last Name"),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backArrow(context),
        body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Container(
                padding: EdgeInsets.all(26),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 70),
                      child: textFields(),
                    ),
                    Align(alignment: Alignment.bottomCenter,
                        child:navButton("NEXT", context, "/emailScreen"),)
                  ],
                ),
              ),
            )));
  }
}
