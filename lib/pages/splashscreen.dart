import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'dart:async';
import 'package:pict_icei/pages/homelayout.dart';

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
                  type: PageTransitionType.rightToLeftWithFade,
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
          child: Container(child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: SafeArea(
                  child: Center(
                    child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
                      Image.asset('assets/logo-cakesoft-horizontal.png',height: 150,
                        width: 150,),
                      Image.asset('assets/logo_sarvatra.png',height: 150,
                        width: 150,),
            ]
            ),
                  ),
                ),
              ),
              Text('ICEI-2022',
                style: TextStyle(
                  color: Colors.black,
                fontFamily: "Raleway",
                fontSize: 50.0,
                fontWeight: FontWeight.w500,),),
              Image.asset('assets/Pict_logo.png',height: 140,
                width: 140),
            ],
          ),

          ),
          ),
        )
    );

  }
}