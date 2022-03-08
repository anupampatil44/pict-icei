import 'dart:ui';

//import 'package:delayed_display/delayed_display.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../nav-tabs/registrationFees.dart';
import '../widgets/size_widgets.dart';

class Tab3 extends StatelessWidget {
  const Tab3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(1), BlendMode.dstATop),
              image: AssetImage('assets/pict_2.jpeg'),
              //NetworkImage('https://icei-app.s3.filebase.com/pict_2.jpeg'),
              fit: BoxFit.cover),
        ),
        //child: DelayedDisplay(
        //delay:Duration(seconds:1),
        child: BackdropFilter(
          //filter: ImageFilter.blur(sigmaX: 2,sigmaY: 1),
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: ListView(
            physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      SizedBox(height: mediaQuery.height * 0.03),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        height: 50.0,
                        width: double.infinity,
                        //color:Colors.white.withOpacity(0.6),
                        child: Text(
                          "CONFERENCE SCHEDULE",
                          style: TextStyle(
                            // decoration: TextDecoration.underline,
                            // decorationStyle: TextDecorationStyle.solid,
                            // decorationColor: Colors.lightBlue,
                            // decorationThickness: 3,
                            color: Colors.black,
                            //color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Raleway',
                            fontSize: 25,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          //color:Colors.black.withOpacity(0.5),
                          color: Colors.white.withOpacity(0.6),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: InkWell(
                          child: Container(
                            height: MediaQuery.of(context).size.width * 0.20,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white.withOpacity(0.6)),
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 15,
                                    vertical: 15,
                                  ),
                                  child: Image.asset(
                                    'assets/icons/docx_icon.png',
                                  ),
                                ),
                                Expanded(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Conference Program",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Raleway',
                                        fontSize: SizeConfig.getProportionateScreenHeight(25),
                                      ),
                                    ),
                                    Text(
                                      '.docx file',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Raleway',
                                        fontSize: SizeConfig.getProportionateScreenHeight(25 / 2),
                                      ),
                                    ),
                                  ],
                                ))
                              ],
                            ),
                          ),
                          onTap: () async {
                            await launchURL(
                                'https://icei-app.s3.filebase.com/CONFERENCE PROGRAM.docx');
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: InkWell(
                          child: Container(
                            height: MediaQuery.of(context).size.width * 0.20,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white.withOpacity(0.6)),
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 15,
                                    vertical: 15,
                                  ),
                                  child: Image.asset(
                                    'assets/icons/docx_icon.png',
                                  ),
                                ),
                                Expanded(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Accepted Paper List",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Raleway',
                                        fontSize: SizeConfig.getProportionateScreenHeight(25),
                                      ),
                                    ),
                                    Text(
                                      '.docx file',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Raleway',
                                        fontSize: SizeConfig.getProportionateScreenHeight(25 / 2),
                                      ),
                                    ),
                                  ],
                                ))
                              ],
                            ),
                          ),
                          onTap: () async {
                            await launchURL(
                                'https://icei-app.s3.filebase.com/Accepted%20paper%20list.docx');
                          },
                        ),
                      ),
                      SizedBox(height: mediaQuery.height * 0.05),
                      scheduleContainer("Problem Submission Deadline", "December 15, 2021",
                          mediaQuery.height * 0.05),
                      SizedBox(height: mediaQuery.height * 0.05),
                      scheduleContainer(
                          "Acceptance Notification", "February 10, 2022", mediaQuery.height * 0.05),
                      SizedBox(height: mediaQuery.height * 0.05),
                      scheduleContainer("Camera Ready Paper Submission", "March 03, 2022",
                          mediaQuery.height * 0.05),
                      SizedBox(height: mediaQuery.height * 0.02),
                      Divider(
                        height: 3.0,
                        thickness: 3.0,
                        color: Colors.white,
                      ),
                      SizedBox(height: mediaQuery.height * 0.02),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        height: 50.0,
                        width: double.infinity,
                        //color:Colors.white.withOpacity(0.6),
                        child: Text(
                          "PROGRAM AT A GLANCE",
                          style: TextStyle(
                            // decoration: TextDecoration.underline,
                            // decorationStyle: TextDecorationStyle.solid,
                            // decorationColor: Colors.lightBlue,
                            // decorationThickness: 3,
                            color: Colors.black,
                            //color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Raleway',
                            fontSize: 25,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          //color:Colors.black.withOpacity(0.5),
                          color: Colors.white.withOpacity(0.6),
                        ),
                      ),
                      SizedBox(height: mediaQuery.height * 0.05),
                      Container(
                        // decoration: BoxDecoration(
                        //   border: Border.all(width: 2,color: Colors.blue.shade700),
                        //   //borderRadius: BorderRadius.circular(20),
                        // ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Center(
                              child: CachedNetworkImage(
                            imageUrl:
                                'https://icei-app.s3.filebase.com/latest_updates_sharvie/cp_1.jpg',
                            progressIndicatorBuilder: (context, url, downloadProgress) => Center(
                              child: CircularProgressIndicator(value: downloadProgress.progress),
                            ),
                          )),
                        ),
                      ),
                      Container(
                        // decoration: BoxDecoration(
                        //   border: Border.all(width: 2,color: Colors.blue.shade700),
                        //   //borderRadius: BorderRadius.circular(20),
                        // ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Center(
                              child: CachedNetworkImage(
                            imageUrl:
                                'https://icei-app.s3.filebase.com/latest_updates_sharvie/cp_2.jpg',
                            progressIndicatorBuilder: (context, url, downloadProgress) => Center(
                              child: CircularProgressIndicator(value: downloadProgress.progress),
                            ),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
