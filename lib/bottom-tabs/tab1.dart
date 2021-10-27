import 'dart:async';

import 'package:date_count_down/countdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:date_count_down/date_count_down.dart';

class Tab1 extends StatefulWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {

  String countTime = "Loading...";

  late Timer _timer;
  
  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1),
            (timer) {
                setState(() {});
            });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    countTime = CountDown().timeLeft(DateTime.parse("2022-03-10"),
      "Conference ongoing now!"
    );
    return Center(
      child: Container(
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

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(child: DelayedDisplay(
                delay: Duration(seconds: 1),
                child: Text(countTime, style:TextStyle(
                    fontFamily: 'Raleway',
                    // fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
                  textAlign: TextAlign.center,
                ),
              )
              ),
            ),

          ],
        ),
      ),
    );
  }
}
