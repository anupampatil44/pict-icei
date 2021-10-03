import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';

class Tab1 extends StatelessWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: DelayedDisplay(
                  delay: Duration(seconds: 1),
              child:Text("ICEI-2022",style:TextStyle(
            fontFamily: 'Raleway',
            fontWeight: FontWeight.bold,
            fontSize: 50
          ),
            textAlign: TextAlign.center,
          ))),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(child: DelayedDisplay(
              delay: Duration(seconds: 1),
              child: Text("2nd International conference on Emerging trends and Innovations in ICT (ICEI)",style:TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 20
              ),
                textAlign: TextAlign.center,),
            )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(child: DelayedDisplay(
              delay: Duration(seconds: 1),
              child: Text("10th - 12th March 2022, PICT, Pune",style:TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 20,
                fontWeight: FontWeight.bold
              ),
                textAlign: TextAlign.center,),
            )
            ),
          ),
        ],
      ),
    );
  }
}
