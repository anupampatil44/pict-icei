import 'package:flutter/material.dart';
import 'package:pict_icei/nav-tabs/about.dart';
import 'package:pict_icei/nav-tabs/committee.dart';
import 'package:pict_icei/nav-tabs/contact.dart';
import 'package:pict_icei/nav-tabs/developers.dart';
import 'package:pict_icei/nav-tabs/gallery.dart';
import 'package:pict_icei/nav-tabs/icei_history.dart';
import 'package:pict_icei/nav-tabs/registrationFees.dart';
import 'package:pict_icei/nav-tabs/sponsors.dart';
import 'package:pict_icei/widgets/transition_animation.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: ListTileTheme(
          textColor: Colors.white,
          iconColor: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: 120.0,
                child: Center(
                    child: Text(
                  'ICEI-2022',
                  style: TextStyle(
                      fontSize: 35,
                      fontFamily: 'Raleway',
                      color: Colors.white),
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Divider(
                  height: 5.0,
                  thickness: 2,
                  color: Colors.grey,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context, TransitionAnimationRightToLeft(const About()));
                },
                leading: const Icon(Icons.info_outline, size: 30),
                title: const Text(
                  'About',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Raleway',
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context, TransitionAnimationRightToLeft(ICEIHistory()));
                },
                leading: const Icon(Icons.history, size: 30),
                title: const Text(
                  'ICEI History',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Raleway',
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      TransitionAnimationRightToLeft(gallerylayout()));
                },
                leading: const Icon(Icons.image_outlined, size: 30),
                title: const Text(
                  'Gallery',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Raleway',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Divider(
                  height: 5.0,
                  thickness: 2,
                  color: Colors.grey,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      TransitionAnimationRightToLeft(const Sponsors()));
                },
                leading: const Icon(Icons.attach_money, size: 30),
                title: const Text(
                  'Sponsors',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Raleway',
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      TransitionAnimationRightToLeft(const Committee()));
                },
                leading: const Icon(Icons.group, size: 30),
                title: const Text(
                  'Committee',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Raleway',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Divider(
                  height: 5.0,
                  thickness: 2,
                  color: Colors.grey,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      TransitionAnimationRightToLeft(
                          const RegistrationFees()));
                },
                leading: const Icon(Icons.app_registration, size: 30),
                title: const Text(
                  'Registration',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Raleway',
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      TransitionAnimationRightToLeft(const ContactUs()));
                },
                leading: const Icon(Icons.phone, size: 30),
                title: const Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Raleway',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Divider(
                  height: 5.0,
                  thickness: 2,
                  color: Colors.grey,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      TransitionAnimationRightToLeft(const Developers()));
                },
                leading: const Icon(Icons.code, size: 30),
                title: const Text(
                  'Developers',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Raleway',
                  ),
                ),
              ),
              const Spacer(),
              DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white54,
                ),
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 16.0,
                  ),
                  child: const Text('Terms of Service | Privacy Policy'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}