import 'package:flutter/material.dart';
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
          padding: const EdgeInsets.all(20),
          children: [
            SizedBox(height: 20),
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
                'Email',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Row(
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
            SizedBox(height: 15),
            Divider(indent: 10, endIndent: 10, thickness: 1.5),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  Widget phoneNum(String num) {
    return Row(
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
    );
  }

  launchPhone(String number) async {
    if (await canLaunch(number)) {
      await launch('tel:+91 $number');
    } else {
      throw 'Could not launch to $number';
    }
  }

  launchEmail(String email) async {
    if (await canLaunch(email)) {
      await launch('mailto:$email');
    } else {
      throw 'Could not launch to  $email';
    }
  }
}
