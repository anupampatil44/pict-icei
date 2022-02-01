import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'imageScreen.dart';

class RegistrationFees extends StatelessWidget {
  const RegistrationFees({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(
        //   "Registration Fees",
        //   style: TextStyle(
        //     fontFamily: 'Raleway',
        //   ),
        // ),
        // centerTitle: true,
        // backgroundColor: Colors.black54,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.1), BlendMode.dstATop),
              image: AssetImage("assets/pict_2.jpeg"),
              fit: BoxFit.cover),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
          child: ListView(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            children: [
              Center(
                child: Text(
                  "Registration",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 12, 5, 0),
                child: Center(
                  child: Text(
                    "Conferences and Workshop",
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 12, 5, 0),
                child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) {
                              return ImageScreen(
                                imgUrl:
                                    "https://icei-app.s3.filebase.com/Registration/registration.png",
                                description: 'Registration Fee',
                              );
                            }),
                          );
                        },
                        child: CachedNetworkImage(
                          imageUrl:
                              "https://icei-app.s3.filebase.com/Registration/registration.png",
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) =>
                                  Center(
                                    child: CircularProgressIndicator(
                                        value: downloadProgress.progress),
                                  ),
                          fit: BoxFit.cover,
                          width: 1000.0,
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                indent: 20,
                endIndent: 20,
                thickness: 1.5,
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 12, 5, 0),
                child: Center(
                  child: Text(
                    "Registration Steps",
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
                child: Text(
                  "Step 1:",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Text(
                  "• Select Category and Make Payment.",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Text(
                  "• While making payment add “ICEI/<your name>” in note/remark field.",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return ImageScreen(
                          imgUrl:
                              "https://icei-app.s3.filebase.com/Registration/qr_code.jpg",
                          description: 'QR Code',
                        );
                      }),
                    );
                  },
                  child: Container(
                    height: 300,
                    child: CachedNetworkImage(
                      imageUrl:
                          "https://icei-app.s3.filebase.com/Registration/qr_code.jpg",
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) =>
                              Center(
                                child: CircularProgressIndicator(
                                    value: downloadProgress.progress),
                              ),
                      fit: BoxFit.contain,
                      // width: 1000.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
                child: Text(
                  "Step 2:",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                  child: Text(
                    "Registration Link: https://forms.gle/7JAyBS16oACrmTUK6",
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 15,
                        color: Colors.blueAccent.withOpacity(0.7)),
                    textAlign: TextAlign.start,
                  ),
                ),
                onTap: () {
                  launchURL('https://forms.gle/7JAyBS16oACrmTUK6');
                },
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                child: Text(
                  "Note for Author:",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Text(
                  "1. Download the copyright form from following link",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                  child: Text(
                    "https://www.icei-pict.org/assets/pdf/icei%20conference%20copyright%20form.pdf.",
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 15,
                        color: Colors.blueAccent.withOpacity(0.7)),
                    textAlign: TextAlign.start,
                  ),
                ),
                onTap: () {
                  launchURL(
                      'https://www.icei-pict.org/assets/pdf/icei%20conference%20copyright%20form.pdf');
                },
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Text(
                  "2. Upload the scanned copy of the signed (for the individual paper) Copyright Transfer Agreement Form, which is in PDF format through the Registration form.",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 18, 20, 0),
                child: Text(
                  "Step 3:",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Text(
                  "Camera Ready Paper Submission",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Text(
                  """Authors should submit camera ready paper,
1. With incorporation of all the comments given by the reviewer/s.
2. As per the conference templates provided in the Downloads section of website https://www.icei-pict.org/ (RAEEE and Springer). Add all authors name and their affiliation.

Kindly email Camera ready paper in both the formats to iceipictpune@gmail.com on or before""",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Text(
                  "20th Feb 2022.",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(height: 20),
              Divider(
                indent: 20,
                endIndent: 20,
                thickness: 1.5,
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 12, 5, 0),
                child: Center(
                  child: Text(
                    "Important Author Information",
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 12, 15, 0),
                child: Center(
                  child: Text(
                    """The ICEI-2022 invites prospective authors to submit manuscript reporting original unpublished research and recent developments in the topics related to the conference which is not published or not under review by any other journal, magazine, or conference.
The authors are required to submit full-text papers including but not limited to Abstract, Keywords, Introduction, Methodology, Result Description, Conclusion, Tables, Figures, and References.
The submission and review process for ICEI-2022 will be done with EasyChair. The abstracts and manuscripts must be uploaded by the authors using their EasyChair account on or before the deadline. The authors can also check the status of their manuscripts during the review process.
It is required that the manuscript follows the Recent Advances in Electrical & Electronic Engineering journal format.""",
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 22, 5, 0),
                child: Center(
                  child: Text(
                    "For Manuscript guidelines click the link given below:",
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                  child: Text(
                    "https://benthamscience.com/journal/manuscript-preparation.php?journalID=raeng#ifa",
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 15,
                        color: Colors.blueAccent.withOpacity(0.7)),
                    textAlign: TextAlign.start,
                  ),
                ),
                onTap: () {
                  launchURL(
                      'https://benthamscience.com/journal/manuscript-preparation.php?journalID=raeng#ifa');
                },
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 22, 5, 0),
                child: Center(
                  child: Text(
                    "For Paper Submission click the link given below:",
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                  child: Text(
                    "https://easychair.org/conferences/?conf=icei2022",
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 15,
                        color: Colors.blueAccent.withOpacity(0.7)),
                    textAlign: TextAlign.start,
                  ),
                ),
                onTap: () {
                  launchURL('https://easychair.org/conferences/?conf=icei2022');
                },
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 19, 15, 0),
                child: Center(
                  child: Text(
                    """To ensure publication of paper at least one author should register and present the paper in the conference. The participation certificate will be given to only registered authors and presentation certificates will be given to the author who has registered and presented the paper.
All presented papers will be published in Recent Advances in Electrical & Electronic Engineering (Web of Science, ESCI, Scopus indexed), Springer LNNS (Scopus indexed),and Springer LNCS Transaction in Computer Science after another round of review by the publisher, if required.""",
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url, forceWebView: false);
  } else {
    throw 'Could not launch $url';
  }
}
