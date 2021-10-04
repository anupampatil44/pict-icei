import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class Sponsors extends StatelessWidget {
  const Sponsors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sponsors",
          style: TextStyle(
            fontFamily: 'Raleway',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: 20,
        ),
        children: [
          sponsorWidget(
              'assets/sponsors/logo_sarvatra.png', 'Sarvatra Technologies'),
          sponsorWidget(
              'assets/sponsors/logo-cakesoft.png', 'CakeSoft Technologies'),
          Divider(
            indent: 20,
            endIndent: 20,
            thickness: 1.5,
          ),
          SizedBox(height: 15),
          Center(
            child: Text(
              "Call For Sponsorships",
              style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 12, 5, 0),
            child: Center(
              child: Text(
                "Pune Institute of Computer Technology, Pune, India is organising the 2nd 'International Conference on Emerging Trends and Innovations in ICT (ICEI-2022)'from 10th March to 12th March 2022. The conference will be conducted in virtual/blended mode.",
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 13,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 12, 5, 0),
            child: Center(
              child: Text(
                "ICEI-2022 is planned to include several keynote speeches by distinguished speakers from industry, academia, and government sectors. Conference has technical sessions featuring presentations of extensively peer reviewed technical papers; workshops focusing on the latest trends in various technologies; tutorials delivered by experts in respective disciplines, and panel discussions & forums on state-of-the-art trends in various domains.",
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 13,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 12, 5, 0),
            child: Center(
              child: Text(
                "We are looking for potential associates for our prestigious conference. Hereby, We request you to consider associating with the International Conference ICEI-2022 as a Sponsor. Kindly get back to us for Sponsorship details (Platinum, Gold, Silver, Bronze and Tracks).",
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 13,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 12, 5, 0),
            child: Center(
              child: Text(
                "Register your willingness and interest by clicking the below button",
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 13,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
            child: ElevatedButton(
                onPressed: () {
                  launchURL('https://forms.gle/UHtc9KRssb2WcxK39');
                },
                child: Text('Register Here')),
          ),
          Divider(
            indent: 20,
            endIndent: 20,
            thickness: 1.5,
          ),
          SizedBox(height: 10),
        ],
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

Widget sponsorWidget(String imageUrl, String name) {
  return Card(
    elevation: 10,
    margin: const EdgeInsets.all(20),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(height: 10),
        Text(
          name,
          style: TextStyle(
            fontFamily: 'Raleway',
            fontSize: 20,
          ),
        ),
        SizedBox(height: 15),
        Container(
          padding: const EdgeInsets.all(25),
          child: Image.asset(imageUrl),
          // child: Image.network(imageUrl),
        ),
        SizedBox(height: 10),
      ],
    ),
  );
}
