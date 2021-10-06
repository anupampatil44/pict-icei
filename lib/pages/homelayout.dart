import 'dart:ui';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:pict_icei/bottom-tabs/tab1.dart';
import 'package:pict_icei/bottom-tabs/tab2.dart';
import 'package:pict_icei/bottom-tabs/tab3.dart';
import 'package:pict_icei/bottom-tabs/tab4.dart';
import 'package:pict_icei/drawer.dart';

class homelayout extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<homelayout> {
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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ICEI-2022",
          style: TextStyle(
            fontFamily: 'Raleway',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      drawer: AppDrawer(),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavyBar(
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
            title: Text('Gallery'),
            icon: Icon(Icons.photo_album),
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
    );
  }
}
