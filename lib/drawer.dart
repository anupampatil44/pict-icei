import 'package:flutter/material.dart';
import 'package:pict_icei/nav-tabs/about.dart';
import 'package:pict_icei/nav-tabs/committee.dart';
import 'package:pict_icei/nav-tabs/contact.dart';
import 'package:pict_icei/nav-tabs/developers.dart';
import 'package:pict_icei/nav-tabs/faq.dart';
import 'package:pict_icei/nav-tabs/gallery.dart';
import 'package:pict_icei/nav-tabs/icei_history.dart';
import 'package:pict_icei/nav-tabs/program.dart';
import 'package:pict_icei/nav-tabs/registrationFees.dart';
import 'package:pict_icei/nav-tabs/sponsors.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          Container(
            height: 120.0,
            child: const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                  child: Text(
                'ICEI-2022',
                style: TextStyle(
                    fontSize: 30, fontFamily: 'Raleway', color: Colors.white),
              )),
            ),
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: const Text('About'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => About(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: const Text('ICEI History'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ICEIHistory(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.image_outlined),
            title: const Text('Gallery'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => gallerylayout(),
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Divider(
              thickness: 1.5,
            ),
          ),
          ListTile(
            leading: Icon(Icons.attach_money),
            title: const Text('Sponsors'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Sponsors(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.groups),
            title: const Text('Committee'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Committee(),
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Divider(
              thickness: 1.5,
            ),
          ),
          ListTile(
            leading: Icon(Icons.event),
            title: const Text('Program'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Program(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.app_registration),
            title: const Text('Registration Fees'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RegistrationFees(),
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Divider(
              thickness: 1.5,
            ),
          ),
          ListTile(
            leading: Icon(Icons.help_outline),
            title: const Text('FAQs'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FAQ(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: const Text('Contact Us'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ContactUs(),
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Divider(
              thickness: 1.5,
            ),
          ),
          ListTile(
            leading: Icon(Icons.code),
            title: const Text('Developers'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Developers(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
