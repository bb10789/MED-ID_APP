import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimatedCircleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var offset = 200.0;

    return Scaffold(
        body: Stack(children: <Widget>[
      Padding(
        padding: EdgeInsets.only(bottom: 20.0),
        child: Align(alignment: Alignment.center, child: _msg),
      ),
      Stack(overflow: Overflow.clip, children: [
        Positioned(
          left: -offset,
          bottom: -MediaQuery.of(context).size.height / 2 -
              offset * 1.8, // TODO: Magic number
          child: Lottie.asset(
            'assets/blue-circle.json',
          ),
        ),
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
