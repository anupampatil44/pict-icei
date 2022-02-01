import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pict_icei/pages/homelayout.dart';
import 'package:pict_icei/pages/splashscreen.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((value) =>
  runApp(MaterialApp(
    initialRoute: '/',
    // theme: ThemeData(
    //   brightness: Brightness.light,
    //   /* light theme settings */
    // ),
    // darkTheme: ThemeData(
    //   brightness: Brightness.dark,
    //   /* dark theme settings */
    // ),
    theme: ThemeData.dark(),
    //themeMode: ThemeMode.system,
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
    routes: {
      '/home': (context) => homelayout(),
    },
  )));
}
