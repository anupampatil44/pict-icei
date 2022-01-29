import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imageUrl=[
  'https://icei-app.s3.filebase.com/iceihistory1.png',
  'https://icei-app.s3.filebase.com/iceihistory2.png',
  'https://icei-app.s3.filebase.com/iceihistory3.png',
  ];
class ICEIHistory extends StatelessWidget {
  //const ICEIHistory({Key? key}) : super(key: key);
  
  final List<Widget> imageSliders = imageUrl
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    CachedNetworkImage(imageUrl: item,fit: BoxFit.cover,width: 1000.0,),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ICEI History",
          style: TextStyle(
            fontFamily: 'Raleway',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image:DecorationImage(
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.dstATop),
              image: AssetImage('assets/pict_3.jpg'),
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
            child: ListView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.only(top: 20,bottom: 20,left:15,right:15),
              physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              children: <Widget>[Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0,20, 0,20),
              child: Text(
                "International Conference on Emerging Trends and Innovations in ICT (ICEI-2017)\nDate (3 Feb-5 Feb, 2017)",
                textAlign: TextAlign.center,
                style: TextStyle(
                  //decoration: TextDecoration.underline,
                  // decorationStyle: TextDecorationStyle.solid,
                  // decorationColor: Colors.lightBlue,
                  // decorationThickness: 3,
                  fontFamily: 'Raleway',
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
                ),
                Divider(
                  height: 20.0,
                  thickness: 2,
                  color: Colors.white,
                ),
                Center(
                  child: Container(
                    child:CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                      ),
                      items: imageSliders,
                    ),
                    // margin: EdgeInsets.all(5.0),
                    // height: 300.0,//todo : media query
                    // child: GridView(
                    //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    //       crossAxisCount: 1,
                    //     ),
                    //     padding: EdgeInsets.only(left: 5,right: 5),
                    //     scrollDirection: Axis.horizontal,
                    //     physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    //     shrinkWrap: true,
                    //     children:<Widget>[
                    //       Center(
                    //         child: Padding(
                    //               padding: const EdgeInsets.all(8.0),
                    //               child: InteractiveViewer(
                    //                child: new Image.asset('./assets/iceihistory1.png',),
                    //              ),
                    //               child:
                    //                     CachedNetworkImage(imageUrl:'https://icei-app.s3.filebase.com/iceihistory1.png'),
                    //             )
                    //         ),
                    //       Center(
                    //           child: Padding(
                    //             padding: const EdgeInsets.all(8.0),
                                // child: InteractiveViewer(
                                //   child: new Image.asset('./assets/iceihistory2.png',),
                                // ),
                    //             child:
                    //                     CachedNetworkImage(imageUrl:'https://icei-app.s3.filebase.com/iceihistory2.png'),
                    //           )
                    //       ),
                    //       Center(
                    //           child: Padding(
                    //             padding: const EdgeInsets.all(8.0),
                    //             // child: InteractiveViewer(
                    //             //   child: new Image.asset('./assets/iceihistory2.png',),
                    //             // ),
                    //             child:
                    //                     CachedNetworkImage(imageUrl:'https://icei-app.s3.filebase.com/iceihistory3.png'),
                    //           )
                    //       ),
                    //     ],
                    // ),
                  ),
                ),
                Divider(
                  height: 20.0,
                  thickness: 2,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Center(
                    child: Text(
                      "The objective of first ICEI 2017 was to provide a forum to academicians, researchers and students to interact with the experts in the field of ICT. This conference was addressed by National & International speakers & consisted of very high quality technical sessions and tutorials related and not limited to Big Data & Data Mining, Cloud & Smart Computing, Embedded Systems, Emerging trends in engineering, High Performance Computing, Information & Network Security, Internet of Everything, Signal Processing, Wireless Communication. As a part of the conference, day 1 (3rd February, 2017) included a tutorial on Digital Hygiene, Big Data Analytics, Mathematical Modeling at Pune. Day 2(4th Feb 2017) included keynote addresses, presentation sessions of participants. Third day of conference 5th February, 2017, included a workshop on Innovative Computing, panel discussions and valedictory function at Pune Institute of Computer Technology. International Participants: Eleven Participants were from Japan, and South Korea.",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: RichText(text: TextSpan(text: "- Date Added to IEEE Xplore:",
                      style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.bold, fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(text: ' 13 July 2017', style: TextStyle( fontWeight: FontWeight.normal,fontSize: 16,fontFamily: 'Raleway',))]
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: RichText(text: TextSpan(text: "ISBN Information:",
                      style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.bold, fontSize: 16,
                      
                      ),
                  ),
                  textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: RichText(text: TextSpan(text: "- Electronic ISBN:",
                      style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.bold, fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(text: ' 978-1-5090-3404-8', style: TextStyle( fontWeight: FontWeight.normal,fontSize: 16,fontFamily: 'Raleway',))]),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: RichText(text: TextSpan(text: "- Print on Demand(PoD) ISBN:",
                      style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.bold, fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(text: ' 978-1-5090-3405-5', style: TextStyle( fontWeight: FontWeight.normal,fontSize: 16,fontFamily: 'Raleway',))]),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: RichText(text: TextSpan(text: "- DOI:",
                      style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.bold, fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(text: ' 10.1109/ETIICT.2017.7977036', style: TextStyle( fontWeight: FontWeight.normal,fontSize: 16,fontFamily: 'Raleway',))]),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: RichText(text: TextSpan(text: "- Publisher:",
                      style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.bold, fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(text: ' IEEE', style: TextStyle( fontWeight: FontWeight.normal,fontSize: 16,fontFamily: 'Raleway',))]),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: RichText(text: TextSpan(text: "- Sponsors:",
                      style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.bold, fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(text: ' EQ Technologic, Ontogo Technologies, Scorplus Trackers, Principal Global Services, GS Web Solutions, Mithi Software, KET Infotech, Extentia, IEEE Pune Section, IEEE Computer Society', style: TextStyle( fontWeight: FontWeight.normal,fontSize: 16,fontFamily: 'Raleway',))]),),
                ),
              ],
              ),
          ),
        ))
    );
  }
}
