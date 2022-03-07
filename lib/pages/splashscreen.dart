// ignore: invalid_language_version_override
import 'dart:async';
//import 'dart:html';

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pict_icei/pages/homelayout.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  late AnimationController animationController;

  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
              context,
              // MaterialPageRoute(builder:
              //     (context) =>
              //     homelayout(),
              // )
              PageTransition(
                  type: PageTransitionType.rightToLeftWithFade,
                  child: homelayout()),
            )
            );
            animationController=AnimationController(
              duration: Duration(seconds:3),
              vsync: this,
            )..repeat();
  }
@override
void dispose(){
    animationController.dispose();
    super.dispose();
}

Animatable<Color?> background=TweenSequence<Color?>(
  [
  TweenSequenceItem(
    weight: 1.0,
    tween: ColorTween(
      begin:Colors.white,
      end:Colors.cyan.shade100,
    ),
    ),
    TweenSequenceItem(
    weight: 1.0,
    tween: ColorTween(
      begin:Colors.cyan.shade200,
      end:Colors.green.shade200,
    ),
    ),
    TweenSequenceItem(
    weight: 1.0,
    tween: ColorTween(
      begin:Colors.green.shade100,
      end:Colors.white,
    ),
    ),
]
);


  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context,child){
      return Scaffold(
          //backgroundColor: Colors.white,
          body: SafeArea(
            child: Center(
              child: Container(
                color:background.evaluate(AlwaysStoppedAnimation(animationController.value)),
                padding: EdgeInsets.fromLTRB(10,0,10,0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DelayedDisplay(
                      delay: Duration(seconds: 1),
                      child: Center(
                        child: SafeArea(
                          child: Center(
                            child: Column(
                              children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      //wait
                                      Image.asset(
                                        'assets/sponsors/iMocha-Logo.png',
                                        height: 125,
                                        width: 125,
                                      ),
                                      Image.asset(
                                        'assets/sponsors/logo_sarvatra.png',
                                        height: 125,
                                        width: 125,
                                      ),
                                    ]
                                    ),
                                    Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset(
                                        'assets/sponsors/logo_AlphaSense.png',
                                        height: 125,
                                        width: 125,
                                      ),
                                      Image.asset(
                                        'assets/sponsors/logo_tarana.png',
                                        height: 125,
                                        width: 125,
                                      ),
                                    ]
                                    ),
                                     Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset(
                                        'assets/sponsors/logo-cakesoft.png',
                                        height: 125,
                                        width: 125,
                                      ),
                                      Image.asset(
                                        'assets/sponsors/MONIMO_logo.png',
                                        height: 125,
                                        width: 125,
                                      ),
                                    ]
                                    ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    DelayedDisplay(
                      delay: Duration(seconds: 1),
                      child: Text(
                        'ICEI-2022',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Raleway",
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    
                    DelayedDisplay(
                      delay: Duration(seconds: 1),
                      child: Center(
                        child: SafeArea(
                          child: Center(
                            child: Column(
                              children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset(
                                        'assets/additional_logos/bentham-science-logo.png',
                                        height: 90,
                                        width: 90,
                                      ),
                                      Image.asset(
                                        'assets/additional_logos/IIC_Logo.png',
                                        height: 125,
                                        width: 125,
                                      ),
                                    ]
                                    ),
                                    Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset(
                                        'assets/additional_logos/springer-logo.png',
                                        height: 125,
                                        width: 125,
                                      ),
                                      Image.asset(
                                        'assets/sponsors/e2open.png',
                                        height: 125,
                                        width: 125,
                                      ),
                                    ]
                                    ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    DelayedDisplay(
                        delay: Duration(seconds: 1),
                        child: Image.asset('assets/additional_logos/Pict_logo.png', height: 100, width: 100
                        )
                        ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.03,
                    ),
                  ],
                ),
              ),
            ),
          )
        );
      },
    );
  }
}