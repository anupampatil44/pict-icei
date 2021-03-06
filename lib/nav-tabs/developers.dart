import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pict_icei/models/developer.dart';
import 'package:url_launcher/url_launcher.dart';

class Developers extends StatelessWidget {
  const Developers({Key? key}) : super(key: key);

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: false);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Developers",
          style: TextStyle(
            fontFamily: 'Raleway',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white.withOpacity(0.6),
        elevation: 0,
      ),
      // extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6), BlendMode.dstATop),
              image: AssetImage("assets/pict_2.jpeg"),
              fit: BoxFit.cover),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
          child: ListView.builder(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: developers.length,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white.withOpacity(0.4),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(1000),
                            child: CircleAvatar(
                              radius: 100,
                              child: CachedNetworkImage(
                                imageUrl: developers[index].imageUrl,
                                progressIndicatorBuilder:
                                    (context, url, downloadProgress) =>
                                        Center(
                                          child: CircularProgressIndicator(
                                              value: downloadProgress.progress),
                                        ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            developers[index].name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Raleway",
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () async {
                                  await launchURL(
                                      developers[index].linkedinUrl);
                                },
                                child: Image.network(
                                  "https://img.icons8.com/ios-glyphs/50/000000/linkedin-circled--v1.png",
                                  height: 50,
                                  width: 50,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              GestureDetector(
                                onTap: () async {
                                  await launchURL(developers[index].githubUrl);
                                },
                                child: Image.network(
                                  "https://img.icons8.com/material-sharp/100/000000/github.png",
                                  height: 50,
                                  width: 50,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

List<Dev> developers = [
  Dev(
      name: "Rohin Bhat",
      imageUrl: "https://committee.s3.filebase.com/devs/rohin.jpg",
      linkedinUrl: "https://www.linkedin.com/in/rohinbhat/",
      githubUrl: "https://github.com/RohinBhat"),
  Dev(
      name: "Anupam Patil",
      imageUrl: "https://committee.s3.filebase.com/devs/anupam.jfif",
      linkedinUrl: "https://www.linkedin.com/in/anupam-patil-114b841b0/",
      githubUrl: "https://github.com/anupampatil44"),
  Dev(
      name: "Akash Kulkarni",
      imageUrl: "https://committee.s3.filebase.com/devs/akash.jfif",
      linkedinUrl: "https://www.linkedin.com/in/akash213kulkarni/",
      githubUrl: "https://github.com/Akash-213"),
  Dev(
      name: "Aditya Kangune",
      imageUrl: "https://committee.s3.filebase.com/devs/aditya.jpg",
      linkedinUrl: "https://www.linkedin.com/in/aditya-kangune-0376671aa/",
      githubUrl: "https://github.com/adityakangune"),
  Dev(
      name: "Sharvi Endait",
      imageUrl: "https://icei-app.s3.filebase.com/developers/Sharvi.jpeg",
      linkedinUrl: "https://www.linkedin.com/in/sharvi-endait-b889b1212/",
      githubUrl: "https://github.com/SharviE29"),
  Dev(
      name: "Rohan Doshi",
      imageUrl: "https://icei-app.s3.filebase.com/developers/Rohan.jpeg",
      linkedinUrl: "https://www.linkedin.com/in/rohan-doshi21/",
      githubUrl: "https://github.com/RohanDoshi21"),
];
