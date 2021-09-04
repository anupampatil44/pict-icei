import 'dart:ui';

import 'package:fancy_bar/fancy_bar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pict_icei/pages/downloads.dart';
import 'package:pict_icei/pages/gallery.dart';
import 'package:pict_icei/pages/home.dart';

class homelayout extends StatefulWidget{
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<homelayout> {

  int _selectedIndex = 0;

  PageController _pageController=PageController();
  List<Widget> _screens=[
    homepage(),
    downloadslayout(),
    gallerylayout(),
  ];

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ICEI-2022",
        style: TextStyle(
        fontFamily: 'Raleway',
        ),
      ),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      backgroundColor:Colors.white,
      drawer: Drawer(
          child:
        ListView(
          padding: EdgeInsets.zero,
          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          children: [
            Container(
              height: 120.0,
              child: const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                ),
                child: Center(child: Text('ICEI-2022',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Raleway',
                ),)),
              ),
            ),
            ListTile(
              title: const Text('About'),
              onTap: () {
                Fluttertoast.showToast(
                    msg: "About",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              },
            ),
            ListTile(
              title: const Text('ICEI History'),
              onTap: () {
                Fluttertoast.showToast(
                    msg: "ICEI History",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              },
            ),
            ListTile(
              title: const Text('Committee'),
              onTap: () {
                Fluttertoast.showToast(
                    msg: "Committee",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              },
            ),
            ListTile(
              title: const Text('Sponsors'),
              onTap: () {
                Fluttertoast.showToast(
                    msg: "Sponsors",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              },
            ),
            ListTile(
              title: const Text('Program'),
              onTap: () {
                Fluttertoast.showToast(
                    msg: "Program",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              },
            ),
            ListTile(
              title: const Text('Author Info'),
              onTap: () {
                Fluttertoast.showToast(
                    msg: "Author Info",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              },
            ),
            ListTile(
              title: const Text('FAQs'),
              onTap: () {
                Fluttertoast.showToast(
                    msg: "FAQs",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              },
            ),
          ],
        )
      ),
        body:PageView(
            controller: _pageController,
            children: _screens,
            onPageChanged: _onPageChanged,
            physics: NeverScrollableScrollPhysics(),
        ),

    bottomNavigationBar: FancyBottomBar(
      type: FancyType.FancyV1,   // Fancy Bar Type
      items: [
        FancyItem(
          textColor: Color.fromRGBO(63, 199, 0, 1.0),
          title: 'Home',
          icon: Icon(Icons.home),
        ),
        FancyItem(
          textColor: Color.fromRGBO(63, 199, 0, 1.0),
          title: 'Downloads',
          icon: Icon(Icons.download),
        ),
        FancyItem(
          textColor: Color.fromRGBO(63, 199, 0, 1.0),
          title: 'Gallery',
          icon: Icon(Icons.image_outlined),
        ),
      ],
      onItemSelected: (index) {
        print(index);
        _pageController.jumpToPage(index);
      },
    ),
    );
  }
}
