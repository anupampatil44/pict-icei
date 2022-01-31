import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contact Us",
          style: TextStyle(
            fontFamily: 'Raleway',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          padding: const EdgeInsets.all(20),
          children: [
            SizedBox(height: 20),
            ListTile(
              title: Text(
                'Connect With Us',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () async =>
                        await launchURL('https://twitter.com/PunePict'),
                    icon: FaIcon(
                      FontAwesomeIcons.twitter,
                    ),
                  ),
                  IconButton(
                    onPressed: () async => await launchURL(
                        'https://www.facebook.com/PICTOfficial'),
                    icon: FaIcon(
                      FontAwesomeIcons.facebook,
                    ),
                  ),
                  IconButton(
                    onPressed: () async =>
                        await launchURL('https://www.instagram.com/pict.pune/'),
                    icon: FaIcon(
                      FontAwesomeIcons.instagram,
                    ),
                  ),
                  IconButton(
                    onPressed: () async => await launchURL(
                        'https://www.linkedin.com/school/pune-institute-of-computer-technology/'),
                    icon: FaIcon(FontAwesomeIcons.linkedin),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Divider(indent: 10, endIndent: 10, thickness: 1.5),
            SizedBox(height: 15),
            ListTile(
              title: Text(
                'Email',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: InkWell(
                onTap: () async => await launchEmail('conference@pict.edu'),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () async =>
                            await launchEmail('conference@pict.edu'),
                        icon: Icon(
                          Icons.mail,
                          color: Colors.blue,
                        )),
                    Text(
                      'conference@pict.edu',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Divider(indent: 10, endIndent: 10, thickness: 1.5),
            SizedBox(height: 15),
            ListTile(
              title: Text(
                'Phone Numbers',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Column(
                children: [
                  phoneNum('02024378063'),
                  phoneNum('02024372479'),
                  phoneNum('02024371101'),
                  phoneNum('02024376190'),
                ],
              ),
            ),
            SizedBox(height: 15),
            Divider(indent: 10, endIndent: 10, thickness: 1.5),
            SizedBox(height: 15),
            ListTile(
              title: Text(
                'Address',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Pune Institute of Computer Technology.\nSurvey No. 27, Near, Trimurti Chowk, Dhankawadi.\nPune, Maharashtra, India.\nPin Code-411043",
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 15),
            Divider(indent: 10, endIndent: 10, thickness: 1.5),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  Widget phoneNum(String num) {
    return InkWell(
      onTap: () async => await launchPhone(num),
      child: Row(
        children: [
          IconButton(
            onPressed: () async => await launchPhone(num),
            icon: Icon(
              Icons.phone,
              color: Colors.blue,
            ),
          ),
          Text(
            num,
            style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch to $url';
    }
  }

  launchPhone(String number) async {
    final Uri params = Uri(
      scheme: 'tel',
      path: number,
    );
    var url = params.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch to $url';
    }
  }

  launchEmail(String email) async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: email,
    );
    var url = params.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch to  $url';
    }
  }
}
