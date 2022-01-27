//import 'package:cached_network_image/cached_network_image.dart';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//Submissions page
class Tab2 extends StatelessWidget {
  const Tab2({Key? key}) : super(key: key);
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: false);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.fromLTRB(10,0, 10,0),
          decoration: BoxDecoration(
           image: DecorationImage(
             colorFilter:ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.dstATop), 
            image: AssetImage('assets/tab2-min.jpg'),
            // NetworkImage(
            //      'https://icei-app.s3.filebase.com/pict_2.jpeg',
            //     'https://icei-app.s3.filebase.com/tab2-min.jpg',
            //     ),
            fit: BoxFit.cover
          )
        ),
        //color: Colors.blue.withOpacity(0.3),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
          child: Center(
              child: ListView(
                  padding: EdgeInsets.only(top: 20, bottom: 20, left: 15, right: 15),
                physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                children: [Center(child: Text("SUBMISSIONS",style: TextStyle(
                  //decoration: TextDecoration.underline,
                  // decorationStyle: TextDecorationStyle.solid,
                  // decorationColor: Colors.lightBlue,
                  // decorationThickness: 3,
                  fontFamily: 'Raleway',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  ),
                  )
                ),
                Divider(
                    height: 10.0,
                    thickness: 3,
                    color: Colors.blue.shade700,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Center(child: Text("CALL FOR PAPER",style: TextStyle(
                      fontFamily: "Raleway",
                      //decoration: TextDecoration.underline,
                      //decorationColor: Colors.lightBlue,
                      //decorationThickness: 2,
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                      ),
                      )
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2,color: Colors.blue.shade700),
                      //borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Center(
                        // child: InteractiveViewer(
                        //   child: Image.network('https://icei-app.s3.filebase.com/call-for-paper.jpg'),
                        // ),
                        child:
                        CachedNetworkImage(imageUrl: 'https://icei-app.s3.filebase.com/call-for-paper-min.jpg')
                        // Image.network('https://icei-app.s3.filebase.com/call-for-paper-min.jpg'),
                        // CachedNetworkImage(
                        //         imageUrl: "https://icei-app.s3.filebase.com/call-for-paper.jpg",
                        //         progressIndicatorBuilder: (context, url, downloadProgress) => 
                        //                 CircularProgressIndicator(value: downloadProgress.progress),
                        //         errorWidget: (context, url, error) => Icon(Icons.error),
                        //     ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.015
                    //height:20,
                  ),
                  Divider(
                    height: 10.0,
                    thickness: 3,
                    color: Colors.blue.shade700,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Center(child: Text("PAPER SUBMISSION LINK:",style: TextStyle(
                      fontFamily: "Raleway",
                      fontWeight: FontWeight.w800,
                      //decoration: TextDecoration.underline,
                      //decorationColor: Colors.lightBlue,
                      decorationThickness: 2,fontSize: 20,),
                      textAlign: TextAlign.center,)
                    ),
                  ),
                  Center(
                      child:TextButton(
                        onPressed: () {
                          const url = 'https://easychair.org/conferences/?conf=icei2022';
                          launchURL(url);
                        },
                        child: Text('Visit Submission Link',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.blue.shade100,
                        ),
                        ),
                        // style: ElevatedButton.styleFrom(
                        //   primary: Colors.lightBlue,
                        //   padding: const EdgeInsets.all(10),
                        // ),
                      )),
                    Divider(
                      height: 10.0,
                      thickness: 3,
                      color: Colors.blue.shade700,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Center(child: Text("SCOPE OF CONFERENCE",style: TextStyle(
                      fontWeight: FontWeight.w800,
                      // fontFamily: "Raleway",
                      // decoration: TextDecoration.underline,decorationColor: Colors.lightBlue,
                      decorationThickness: 2,fontSize: 20
                      ),
                      ),
                    ),
                  ),
                  Divider(
                      height: 10.0,
                      thickness: 1,
                      color: Colors.blue.shade700,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child: Center(child: Text("Track 1 - Big Data Storage and Analytics",style: TextStyle(
                      fontFamily: "Raleway",
                      //decoration: TextDecoration.underline,decorationColor: Colors.lightBlue,
                      decorationThickness: 2,fontSize: 20,
                      fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                        Text("- Data Mining and Knowledge Discovery",style: TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 15,
                        ),
                        textAlign: TextAlign.left,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Data Warehousing and Visualization",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
                    Text("- Big Data Management",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Information Security",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Blockchain interoperability, Consensus mechanisms",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Divider(
                      height: 10.0,
                      thickness: 1,
                      color: Colors.blue.shade700,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child: Center(child: Text("Track 2 - Artificial Intelligence and Machine Learning",style: TextStyle(
                      fontFamily: "Raleway",
                      // decoration: TextDecoration.underline,decorationColor: Colors.lightBlue,
                      // decorationThickness: 2,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,)
                    ),
                  ),
            
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Agents and Artificial Intelligence",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Trustworthy Machine Learning and Evolutionary Computation",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Neural Network Models, Deep Reinforcement Learning",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Scalable and Real-Time Machine Learning",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Multidisciplinary Natural Language Processing",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Intelligent Robotics",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- AI/ML in information Security",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Divider(
                      height: 10.0,
                      thickness: 1,
                      color: Colors.blue.shade700,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child: Center(child: Text("Track 3 -Cognitive Systems, Vision and Perception",style: TextStyle(
                      fontFamily: "Raleway",
                      // decoration: TextDecoration.underline,decorationColor: Colors.lightBlue,
                      // decorationThickness: 2,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,),
                      textAlign: TextAlign.center,)
                    ),
                  ),
            
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Computer Vision and Pattern Recognition",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Homography, Camera-Stereo Geometry, and Superresolution",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Attention Models and Generative Models in Vision",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
                    Text("- Reinforcement Learning in Vision",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
                    Text("- Cross Reality",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Key Management and Distribution",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Social Network Exploration",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Multimodal Interface",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Multimedia & Cognitive Informatics",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Pervasive Computing and Ambient Intelligence",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Divider(
                      height: 10.0,
                      thickness: 1,
                      color: Colors.blue.shade700,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child: Center(child: Text("Track 4 - Embedded Systems and Internet of Things",style: TextStyle(
                      fontFamily: "Raleway",
                      // decoration: TextDecoration.underline,decorationColor: Colors.lightBlue,
                      fontWeight: FontWeight.w700,
                      decorationThickness: 2,fontSize: 20,),
                      textAlign: TextAlign.center,)
                    ),
                  ),
            
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Future IoT Technologies, Architecture, Interoperability, Edge",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- IoT Resource, Security, and Privacy Management, Self Adaption",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- LSI and VHDL Architecture, Design System On Chip Design for Variability, Reliability, Fault Tolerance, Test, and others",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Divider(
                      height: 10.0,
                      thickness: 1,
                      color: Colors.blue.shade700,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child: Center(child: Text("Track 5 - Soft Computing",style: TextStyle(
                      fontFamily: "Raleway",
                      // decoration: TextDecoration.underline,decorationColor: Colors.lightBlue,
                      // decorationThickness: 2,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,),
                      textAlign: TextAlign.center,)
                    ),
                  ),
            
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Ant Colony Optimization and Swarm Intelligence",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Artificial Immune Systems",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Particle Swarm Optimization",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Swarm Intelligence",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Evolutionary Systems",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Genetic Algorithm",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Fuzzy logic and Systems",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Transfer learning",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Fuzzy Reconfigurable Systems",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Morphic computing",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                   Divider(
                      height: 10.0,
                      thickness: 1,
                      color: Colors.blue.shade700,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child: Center(child: Text("Track 6 - Computational Intelligence",style: TextStyle(
                      fontFamily: "Raleway",
                      // decoration: TextDecoration.underline,
                      // decorationColor: Colors.lightBlue,
                      // decorationThickness: 2,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,),
                      textAlign: TextAlign.center,)
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Computational Intelligence in Bioinformatics and Computational Biology",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Computational Intelligence Multiagent System",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Ontology-based Intelligent Systems",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Quantum Computing",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Intelligent systems (tutoring, information retrieval, image processing, hybrid)",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Multidisciplinary applications of computational intelligence in Water, Autonomous vehicles,Clean energy, Healthcare, Agriculture, infrastructure, Defence related Technologies",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Bio Mechatronics and Rehabilitation Engineering",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Renewable systems",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Divider(
                      height: 10.0,
                      thickness: 1,
                      color: Colors.blue.shade700,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child: Center(child: Text("Track 7 - Advanced Communication Technologies",style: TextStyle(
                      fontFamily: "Raleway",
                      // decoration: TextDecoration.underline,decorationColor: Colors.lightBlue,
                      // decorationThickness: 2,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,),
                      textAlign: TextAlign.center,)
                    ),
                  ),
            
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
                    Text("- Wireless and Mobile Communications",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Optical Fiber Communication and Optical Networks",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Satellite Communication Networks",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Vehicle Communication Systems, Remotely Operated Vehicles (ROV)",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Novel Microwave Theories and Technologies",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
            
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Sustainable Communication Technologies",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Cognitive Radio Networks",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                    child:
            
                    Text("- Green Communication",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Divider(
                      height: 10.0,
                      thickness: 3,
                      color: Colors.blue.shade700,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child: Center(child: Text("SUBMISSION GUIDELINES",style: TextStyle(
                      fontFamily: "Raleway",
                      // decoration: TextDecoration.underline,decorationColor: Colors.lightBlue,
                      // decorationThickness: 2,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,)
                    ),
                  ),
            
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                    child:
            
                    Text("ICEI Conference is seeking original unpublished technical papers not currently under review by any other journal, magazine, or conference.\n\nAll accepted and presented papers will be published in Recent Advances in Electrical & Electronic Engineering (Web of Science, ESCI, Scopus indexed), Springer LNNS (Scopus indexed), Springer LNCS Transaction in Computer Science after another round of review.The participation certificate will be given to only registered authors and presentation certificates will be given to the author who has registered and presented the paper.\n\nTo ensure publication of paper at least one author should register and present paper in the conference.",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Divider(
                      height: 10.0,
                      thickness: 3,
                      color: Colors.blue.shade700,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child: Center(child: Text("CALL FOR WORKSHOP",style: TextStyle(
                      fontFamily: "Raleway",
                      // decoration: TextDecoration.underline,
                      // decorationColor: Colors.lightBlue,
                      // decorationThickness: 2,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,),
                      textAlign: TextAlign.center,)
                    ),
                  ),
            
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("The ICEI-2022 invites one-day (4 hours) or two-day (8 hours) proposals on new and emerging topics within the scope of the conference theme of emerging trends and innovations in Information and Communication Technology (ICT). Workshops are an integral part of the program of ICEI-2022. They provide participants with broad and comprehensive overviews of emerging trends in the domain.",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Title\n- Abstract\n- Objectives and motivation\n- Intended audience\n- Prior history of the workshop conduction and number of past attendees, if applicable\n- Workshop Outline\n- Short biography of the instructor(s)\n\nPlease submit your tutorial proposals as a single PDF file (maximum 5 pages, double-space) by email to conference@pict.edu with the heading “ICEI-2022 Workshop Submission”.",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                    child: RichText(text: TextSpan(text: "Proposal Submission Deadline: ",
                        style: TextStyle(fontFamily: 'Raleway',
                        //color: Colors.black,
                        fontWeight: FontWeight.bold, fontSize: 15),
                        children: <TextSpan>[
                          TextSpan(text: '30th October 2021', style: TextStyle( fontWeight: FontWeight.normal,fontSize: 13,fontFamily: 'Raleway',))]),),
                  ),
                  Divider(
                      height: 10.0,
                      thickness: 3,
                      color: Colors.blue.shade700,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                    child: Center(child: Text("CALL FOR TUTORIAL",style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: "Raleway",
                      // decoration: TextDecoration.underline,decorationColor: Colors.lightBlue,
                      // decorationThickness: 2,
                      fontSize: 20,),
                      textAlign: TextAlign.center,)
                    ),
                  ),
            
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("ICEI-2022 solicits half-day (3 hours) or full-day (6 hours) tutorial proposals on emerging trends and innovations in Information and Communication Technology (ICT), Tutorials are an integral part of the program of ICEI-2022. They provide participants with broad and comprehensive overviews of emerging fields in ICT.",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("- Title\n- Abstract\n- Objectives and motivation\n- Intended audience\n- Prior history of the workshop conduction and number of past attendees, if applicable\n- Tutorial Outline\n- Short biography of the instructor(s)\n",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
            
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                    child: RichText(text: TextSpan(text: "IMPORTANT DATES-\n\n",
                        style: TextStyle(fontFamily: 'Raleway',
                        //color: Colors.black,
                        fontWeight: FontWeight.bold, fontSize: 15),
                        children: <TextSpan>[
                          TextSpan(text: 'Please submit your tutorial proposals as a single PDF file (maximum 5 pages, double-space) by email to conference@pict.edu with the heading “ICEI-2022 Tutorial Submission”.', style: TextStyle( fontWeight: FontWeight.normal,
                          //color: Colors.black,
                          fontSize: 15,fontFamily: 'Raleway',)),
                          TextSpan(text: '\n\nProposal Submission Deadline: ', style: TextStyle( fontWeight: FontWeight.bold,fontSize: 15,fontFamily: 'Raleway',)),
                          TextSpan(text: '30th October 2021', style: TextStyle( fontWeight: FontWeight.normal,fontSize: 15,fontFamily: 'Raleway',))]),),
                  ),
                  Divider(
                      height: 10.0,
                      thickness: 3,
                      color: Colors.blue.shade700,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                    child: Center(child: Text("CALL FOR INDUSTRY PANEL",style: TextStyle(
                      fontFamily: "Raleway",
                      fontWeight: FontWeight.w700,
                      // decoration: TextDecoration.underline,decorationColor: Colors.lightBlue,
                      // decorationThickness: 2,
                      fontSize: 20,),
                      textAlign: TextAlign.center,)
                    ),
                  ),
            
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child:
            
                    Text("The ICEI-2022 invites 1 hours to 2 hours panel proposals on future and emerging topics within the scope of the conference theme of emerging trends and innovations in Information and Communication Technology (ICT).",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                    child:
            
                    Text("- Title of the panel\n- Names, addresses, and short biographies of the organizers\n- A brief description including motivation and background along with take away messages.\n- Names, affiliations, and short biographies of proposed 3 to 5 panelists\n- Planned format of the panel, such as planned presenters, topics, etc.\n- Questions to be addressed to the panelist\n",style: TextStyle(
                      fontFamily: "Raleway",fontSize: 15,),
                      textAlign: TextAlign.left,),
                  ),
                  Divider(
                      height: 10.0,
                      thickness: 3,
                      color: Colors.blue.shade700,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                    child: RichText(
                      textAlign:TextAlign.center,
                      text: TextSpan(text: "IMPORTANT DATES-\n\n",
                        style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.bold, fontSize: 15,
                        //color: Colors.black
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'Please submit your panel proposals as a single PDF file (maximum 8 pages, double-space) by email to conference@pict.edu with the heading “ICEI-2022 Panel Submission”.', style: TextStyle( fontWeight: FontWeight.normal,fontSize: 15,fontFamily: 'Raleway',
                          //color: Colors.black
                          )),
                          TextSpan(text: '\n\nProposal Submission Deadline: ', style: TextStyle( fontWeight: FontWeight.bold,fontSize: 15,fontFamily: 'Raleway',
                          //color: Colors.black
                          )),
                          TextSpan(text: '30th October 2021', style: TextStyle( fontWeight: FontWeight.normal,fontSize: 15,fontFamily: 'Raleway',
                          //color: Colors.black
                          ))]),),
                  ),
                   Divider(
                      height: 10.0,
                      thickness: 3,
                      color: Colors.blue.shade700,
                  ),
                ]),
            ),
        ),
      ),
    );
  }
}

