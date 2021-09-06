import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
                color: Colors.lightGreen,
              ),
              child: Center(
                  child: Text(
                'ICEI-2022',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Raleway',
                ),
              )),
            ),
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: const Text('About'),
            onTap: () {
              Fluttertoast.showToast(
                  msg: "About",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: const Text('ICEI History'),
            onTap: () {
              Fluttertoast.showToast(
                  msg: "ICEI History",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: const Text('Committee'),
            onTap: () {
              Fluttertoast.showToast(
                  msg: "Committee",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: const Text('Sponsors'),
            onTap: () {
              Fluttertoast.showToast(
                  msg: "Sponsors",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: const Text('Program'),
            onTap: () {
              Fluttertoast.showToast(
                  msg: "Program",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  textColor: Colors.white,
                  fontSize: 16.0);
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
                  fontSize: 16.0);
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: const Text('FAQs'),
            onTap: () {
              Fluttertoast.showToast(
                  msg: "FAQs",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
          ),
        ],
      ),
    );
  }
}
