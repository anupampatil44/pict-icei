import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'dart:async';
import 'package:pict_icei/pages/homelayout.dart';
import 'package:flutter/services.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}
class _splashscreenState extends State<splashscreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
            () =>
            Navigator.pushReplacement(context,
                // MaterialPageRoute(builder:
                //     (context) =>
                //     homelayout(),
                // )
              PageTransition(
                  type: PageTransitionType.bottomToTop,
                  child: homelayout()
              ),
            )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:
        SafeArea(
        child:Center(
          child: Container(child: Image.asset('assets/Pict_logo.png'),
          ),
          ),
        )
    );

  }
}