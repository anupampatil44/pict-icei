import 'package:flutter/material.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final CountdownController _controller =
  new CountdownController(autoStart: true);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.greenAccent[100]
          // image: DecorationImage(
          //     image: null,
          // ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 50,),
                Text("ICEI-2022"),
                SizedBox(height: 20,),
                Text("2nd International conference on Emerging trends and Innovations in ICT (ICEI)"),
                SizedBox(height: 20,),
                Text("10th - 12th March 2022, PICT, Pune"),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    // Start
                    ElevatedButton(
                      child: Text('Start'),
                      onPressed: () {
                        _controller.start();
                      },
                    ),
                    // Pause
                    ElevatedButton(
                      child: Text('Pause'),
                      onPressed: () {
                        _controller.pause();
                      },
                    ),
                    // Resume
                    ElevatedButton(
                      child: Text('Resume'),
                      onPressed: () {
                        _controller.resume();
                      },
                    ),
                    // Stop
                    ElevatedButton(
                      child: Text('Restart'),
                      onPressed: () {
                        _controller.restart();
                      },
                    ),

                  ],
                ),
                Countdown(
                  // controller: _controller,
                  seconds: 5,
                  build: (_, double time) => Text(
                    time.toString(),
                    style: TextStyle(
                      fontSize: 100,
                    ),
                  ),
                  interval: Duration(milliseconds: 100),
                  onFinished: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Timer is done!'),
                      ),
                    );
                  },
                ),
                SizedBox(height: 20,),
                Text("ABOUT CONFERENCE"),
                SizedBox(height: 20,),
                Text("Title of Conference: “International conference on Emerging trends and Innovations in ICT (ICEI)”"),
                SizedBox(height: 20,),
                Container(
                  height: 120.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'lib/assets/about/about_pict.jpg'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                Text("""
                    The conference will provide an online platform to the participants with opportunities to present and explore emerging trends in the interdisciplinary areas along with practical challenges encountered and possible solutions of high impact adopted.

The conference will provide an online platform promoting and inculcating research culture to bring forth significant research and innovations to share and exchange knowledge across all aspects of Computing, Communication engineering and Information Science and technology for sustainable development by leading academicians, industry experts, researchers, and research scholars.

The conference will provide online workshops within scope facilitating interaction with leading experts to share their insights, provide guidance and address participant's questions and concerns.
                
                """),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

