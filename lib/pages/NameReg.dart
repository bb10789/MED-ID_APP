import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import "package:med_id/utilities/constants.dart";

class NameReg extends StatefulWidget {
  @override
  _NameRegState createState() => _NameRegState();
}

class _NameRegState extends State<NameReg> {

  Widget _buildFirstNameTF() {
  return  Column(
      children: <Widget>[
        Container(
            alignment: Alignment.centerLeft,
            height: 60,
            decoration: mBoxDecorationStyle,
            child: TextFormField(
              keyboardType: TextInputType.text,
              style: TextStyle(
                color: Hexcolor("#000000"),
                fontFamily: "OpenSans",
              ),
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                border: mOutlineInputStyle,
                contentPadding: EdgeInsets.only(left: 40, top: 20, bottom: 20),
                hintText: "First Name",
                hintStyle: TextStyle(
                    fontSize: 18,
                    color: Hexcolor("#38000000")),
                fillColor: Colors.white,
                filled: true,
              ),
            ))
      ],
    );
  }

  Widget _buildLastNameTF() {
    return Column(
      children: <Widget>[
        SizedBox(height: 25),
        Container(
            alignment: Alignment.centerLeft,
            height: 60,
            decoration: mBoxDecorationStyle,
            child: TextFormField(
              keyboardType: TextInputType.text,
              style: TextStyle(
                color: Hexcolor("#000000"),
                fontFamily: "OpenSans",
              ),
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                border: mOutlineInputStyle,
                contentPadding: EdgeInsets.only(left: 40, top: 20, bottom: 20),
                hintText: "Last Name",
                hintStyle: TextStyle(
                    fontSize: 18,
                    color: Hexcolor("#38000000")),
                fillColor: Colors.white,
                filled: true,
              ),
            ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Stack(
                children: <Widget>[
                  Container(
                      height: double.infinity,
                      width: double.infinity,
                      color: Hexcolor("FFFFFF"),
                      child: SingleChildScrollView(
                          physics: AlwaysScrollableScrollPhysics(),
                          padding: EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 200.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              _buildFirstNameTF(),
                              _buildLastNameTF(),
                              SizedBox(height: 250),
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
                                      Navigator.pushNamed(context, "/findingscreen");
                                    },
                                    padding: EdgeInsets.fromLTRB(140, 20, 140, 20),
                                    child: Text("NEXT",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: "OpenSans",
                                          letterSpacing: 2,
                                        ))),
                              ),
                            ],
                          )))
                ],
              ),
            )));
  }
}
