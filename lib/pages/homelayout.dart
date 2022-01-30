import 'dart:ui';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:pict_icei/bottom-tabs/tab1.dart';
import 'package:pict_icei/bottom-tabs/tab2.dart';
import 'package:pict_icei/bottom-tabs/tab3.dart';
import 'package:pict_icei/bottom-tabs/tab4.dart';
import 'package:pict_icei/drawer.dart';
import 'package:pict_icei/nav-tabs/about.dart';
import 'package:pict_icei/nav-tabs/committee.dart';
import 'package:pict_icei/nav-tabs/contact.dart';
import 'package:pict_icei/nav-tabs/developers.dart';
import 'package:pict_icei/nav-tabs/gallery.dart';
import 'package:pict_icei/nav-tabs/icei_history.dart';
import 'package:pict_icei/nav-tabs/registrationFees.dart';
import 'package:pict_icei/nav-tabs/sponsors.dart';
import 'package:pict_icei/packages/advance_drawer/flutter_advanced_drawer.dart';

class homelayout extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<homelayout> {
  final _advancedDrawerController = AdvancedDrawerController();
  int _selectedIndex = 0;

  List<Widget> _screens = [
    Tab1(),
    Tab2(),
    Tab3(),
    Tab4(),
  ];

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdropColor: Colors.blueGrey[800],
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 0.0,
          ),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "ICEI-2022",
            style: TextStyle(
              fontFamily: 'Raleway',
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: _advancedDrawerController,
              builder: (_, value, __) {
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 250),
                  child: Icon(
                    value.visible ? Icons.clear : Icons.menu,
                    key: ValueKey<bool>(value.visible),
                  ),
                );
              },
            ),
          ),
        ),

        extendBodyBehindAppBar: true,
        // drawer: AppDrawer(),
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavyBar(
          backgroundColor: Colors.transparent,
          showElevation: false,
          selectedIndex: _selectedIndex,
          onItemSelected: (clickedIndex) async {
            setState(() {
              _selectedIndex = clickedIndex;
            });
          },
          animationDuration: Duration(milliseconds: 500),
          curve: Curves.easeInCirc,
          items: [
            BottomNavyBarItem(
              title: Text('Home'),
              textAlign: TextAlign.center,
              icon: Icon(Icons.home),
              activeColor: Colors.lightBlue,
              inactiveColor: Colors.black54,
            ),
            BottomNavyBarItem(
              title: Text('Submissions'),
              icon: Icon(Icons.work_outline_sharp),
              textAlign: TextAlign.center,
              activeColor: Colors.lightBlue,
              inactiveColor: Colors.black54,
            ),
            BottomNavyBarItem(
              title: Text('Schedule'),
              icon: Icon(Icons.calendar_today),
              textAlign: TextAlign.center,
              activeColor: Colors.lightBlue,
              inactiveColor: Colors.black54,
            ),
            BottomNavyBarItem(
              title: Text('Downloads'),
              icon: Icon(Icons.download),
              textAlign: TextAlign.center,
              activeColor: Colors.lightBlue,
              inactiveColor: Colors.black54,
            )
          ],
        ),
      ),
      drawer: SafeArea(
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
                    'Registration Fees',
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
      ),
    );
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}

class TransitionAnimationRightToLeft extends PageRouteBuilder {
  final Widget page;

  TransitionAnimationRightToLeft(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: const Duration(milliseconds: 800),
          reverseTransitionDuration: const Duration(milliseconds: 200),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animation = CurvedAnimation(
                curve: Curves.easeInOutCubicEmphasized,
                parent: animation,
                reverseCurve: Curves.fastOutSlowIn);
            return Align(
              alignment: Alignment.centerRight,
              child: SizeTransition(
                axis: Axis.horizontal,
                sizeFactor: animation,
                child: page,
                axisAlignment: 0,
              ),
            );
          },
        );
}
