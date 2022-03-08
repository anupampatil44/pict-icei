import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pict_icei/utils/network_pdf_viewer.dart';
import 'package:pict_icei/widgets/size_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class Tab4 extends StatefulWidget {
  const Tab4({Key? key}) : super(key: key);

  @override
  _Tab4State createState() => _Tab4State();
}

// TODO: Registration form and Copyright form
class _Tab4State extends State<Tab4> {
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: false);
    } else {
      throw 'Could not launch $url';
    }
  }
  // static Future<File> loadAsset(String path) async {
  //   final data = await rootBundle.load(path);
  //   final bytes = data.buffer.asUint8List();

  //   return _storeFile(path, bytes);
  // }

  // static Future<File> _storeFile(String url, List<int> bytes) async {
  //   final filename = basename(url);
  //   final dir = await getApplicationDocumentsDirectory();

  //   final file = File('${dir.path}/$filename');
  //   await file.writeAsBytes(bytes, flush: true);
  //   return file;
  // }

  @override
  Widget build(BuildContext context) {
    // final mediaQuery = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/pict_2.jpeg"), fit: BoxFit.cover),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
        child: Center(
          child: ListView(
            physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            children: [
              SizedBox(
                height: Scaffold.of(context).appBarMaxHeight!,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: InkWell(
                  child: Container(
                    height: MediaQuery.of(context).size.width * 0.20,
                    decoration: BoxDecoration(
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.blueAccent,
                        //     offset: const Offset(
                        //       2.5,
                        //       2.5,
                        //     ),
                        //     blurRadius: 10.0,
                        //     spreadRadius: 1.0,
                        //   ),
                        //   BoxShadow(
                        //     color: Colors.white,
                        //     offset: const Offset(0.0, 0.0),
                        //     blurRadius: 0.0,
                        //     spreadRadius: 0.0,
                        //   )
                        // ],
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
                            'assets/icons/pdf_icon.png',
                          ),
                        ),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Call for Paper",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Raleway',
                                fontSize: SizeConfig.getProportionateScreenHeight(25),
                              ),
                            ),
                            Text(
                              '.pdf file',
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
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => NewtorkPdfViewer(
                          link: 'https://icei-app.s3.filebase.com/call-for-paper.pdf',
                          title: 'Call for Paper',
                        ),
                      ),
                    );
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
                            'assets/icons/pdf_icon.png',
                          ),
                        ),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Conference Brochure",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Raleway',
                                fontSize: SizeConfig.getProportionateScreenHeight(25),
                              ),
                            ),
                            Text(
                              '.pdf file',
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
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => NewtorkPdfViewer(
                          link: 'https://icei-app.s3.filebase.com/ICEI_Brochure.pdf',
                          title: 'Conference Brochure',
                        ),
                      ),
                    );
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
                              "Template for RAEEE",
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
                    await launchURL('https://icei-app.s3.filebase.com/Template_for_paper.dotx');
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
                              "Template for Springer",
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
                    await launchURL('https://icei-app.s3.filebase.com/templateforspringer.docm');
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
                            'assets/icons/pdf_icon.png',
                          ),
                        ),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Registration Form",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Raleway',
                                fontSize: SizeConfig.getProportionateScreenHeight(25),
                              ),
                            ),
                            Text(
                              '.pdf file',
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
                  onTap: () {},
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
                            'assets/icons/pdf_icon.png',
                          ),
                        ),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Copyright Form",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Raleway',
                                fontSize: SizeConfig.getProportionateScreenHeight(25),
                              ),
                            ),
                            Text(
                              '.pdf file',
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
                  onTap: () {},
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
                            'assets/icons/url_icon.png',
                          ),
                        ),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Privacy Policy",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Raleway',
                                fontSize: SizeConfig.getProportionateScreenHeight(25),
                              ),
                            ),
                            Text(
                              'url',
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
                    await launchURL('https://www.icei-pict.org/privacy-policy.html');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
