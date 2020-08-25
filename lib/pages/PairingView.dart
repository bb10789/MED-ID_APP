import 'package:flutter/material.dart';

class PairingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var offset = 200;
    var radius = MediaQuery.of(context).size.width + offset;

    return Scaffold(
        body: Stack(children: <Widget>[
      Padding(
        padding: EdgeInsets.only(bottom: 20.0),
        child: Align(alignment: Alignment.center, child: _msg),
      ),
      Stack(overflow: Overflow.clip, children: [
        Positioned(
            left: -offset / 2,
            bottom: -MediaQuery.of(context).size.height / 2 - offset / 2,
            child: Container(
              width: radius,
              height: radius,
              decoration: BoxDecoration(
                  color: Colors.blue.withAlpha(40), shape: BoxShape.circle),
            )),
        Positioned(
            left: -offset / 2,
            bottom: -MediaQuery.of(context).size.height / 2 + 75 - offset / 2,
            child: Container(
              width: radius,
              height: radius,
              decoration: BoxDecoration(
                  color: Colors.blue.withAlpha(35), shape: BoxShape.circle),
            )),
        Positioned(
            left: -offset / 2,
            bottom: -MediaQuery.of(context).size.height / 2 + 150 - offset / 2,
            child: Container(
              width: radius,
              height: radius,
              decoration: BoxDecoration(
                  color: Colors.blue.withAlpha(30), shape: BoxShape.circle),
            )),
        Padding(
          padding: EdgeInsets.only(bottom: 20.0),
          child:
              Align(alignment: Alignment.bottomCenter, child: _findingButton),
        )
      ])
    ]));
  }

  Widget _msg = Flex(
    direction: Axis.horizontal,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        padding: EdgeInsets.all(20),
        child: Text(
          "Hold MED ID near your phone",
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700),
        ),
      )
    ],
  );

  Widget _findingButton = FlatButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18),
      side: BorderSide(color: Colors.blue),
    ),
    color: Colors.blue,
    child: Text("Finding MED ID ..."),
    textColor: Colors.white,
    onPressed: () => {},
  );
}
