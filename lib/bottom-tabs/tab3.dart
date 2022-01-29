import 'dart:ui';

//import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class Tab3 extends StatelessWidget {
  const Tab3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Center(
      child: Container(
        constraints:BoxConstraints.expand(),
        decoration: BoxDecoration(
          image:DecorationImage(
            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(1), BlendMode.dstATop),
            image: AssetImage('assets/pict_2.jpeg'),
            //NetworkImage('https://icei-app.s3.filebase.com/pict_2.jpeg'),
            fit:BoxFit.cover
          ) ,
        ),
        //child: DelayedDisplay(
          //delay:Duration(seconds:1),
          child: BackdropFilter(
            //filter: ImageFilter.blur(sigmaX: 2,sigmaY: 1),
            filter:ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    SizedBox(height: mediaQuery.height * 0.18),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      height: 50.0,
                      width: double.infinity,
                      //color:Colors.white.withOpacity(0.6),
                      child: Text(
                        "SCHEDULES PAGE",
                        style: TextStyle(
                          // decoration: TextDecoration.underline,
                          // decorationStyle: TextDecorationStyle.solid,
                          // decorationColor: Colors.lightBlue,
                          // decorationThickness: 3,
                          color: Colors.black,
                          //color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Raleway',
                          fontSize: 25,),
                          textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        //color:Colors.black.withOpacity(0.5),
                        color:Colors.white.withOpacity(0.6),
                      ),
                    ),
                    SizedBox(height: mediaQuery.height * 0.05),
                    scheduleContainer("Problem Submission Deadline", "December 15, 2021",
                        mediaQuery.height * 0.05),
                    SizedBox(height: mediaQuery.height * 0.05),
                    scheduleContainer("Acceptance Notification", "January 25, 2022",
                        mediaQuery.height * 0.05),
                    SizedBox(height: mediaQuery.height * 0.05),
                    scheduleContainer("Camera Ready Paper Submission",
                        "January 30, 2022", mediaQuery.height * 0.05)
                  ],
                ),
              ),
            ),
          ),
        ),
      //),
    );
  }

  Widget scheduleContainer(String title, String date, double height) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.6),
        //color: Colors.black.withOpacity(0.6),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 20,
                fontWeight: FontWeight.w500,
                //color: Colors.white,
                color: Colors.black,
              ),
            ),
            SizedBox(height: height),
            Text(
              date,
              style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 18,
                  //color: Colors.white,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
