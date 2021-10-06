import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pict_icei/utils/pdf_viewer.dart';

class Tab4 extends StatefulWidget {
  const Tab4({Key? key}) : super(key: key);

  @override
  _Tab4State createState() => _Tab4State();
}

class _Tab4State extends State<Tab4> {
  static Future<File> loadAsset(String path) async {
    final data = await rootBundle.load(path);
    final bytes = data.buffer.asUint8List();

    return _storeFile(path, bytes);
  }

  static Future<File> _storeFile(String url, List<int> bytes) async {
    final filename = basename(url);
    final dir = await getApplicationDocumentsDirectory();

    final file = File('${dir.path}/$filename');
    await file.writeAsBytes(bytes, flush: true);
    return file;
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      child: Center(
        child: ListView(
          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20
          ),
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0,20,0,0),
              child: Center(
                child: Text(
                  'Downloads Page',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,fontFamily: "Raleway"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,20,0,20),
              child: Container(
                width: mediaQuery.width * 0.50,
                height: mediaQuery.height * 0.10,
                child: Card(
                  elevation: 5,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    child: Center(child: Text('Call For Papers',style: TextStyle(
                      fontFamily: 'Raleway',
                    ),)),
                    // style: ElevatedButton.styleFrom(
                    //   primary: Colors.lightBlue,
                    //   padding: const EdgeInsets.all(20),
                    // ),
                    onTap: () async {
                      final path = 'assets/downloads_tab/call-for-paper.pdf';
                      final file = await loadAsset(path);
                      print("Path : " + path);
                      await Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => PDFViewer(
                            file: file,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0,20,0,20),
          child: Container(
            width: mediaQuery.width * 0.50,
            height: mediaQuery.height * 0.10,
            child: Card(
              elevation: 5,

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                child: Center(child: Text('Conference Brochure',style: TextStyle(
                  fontFamily: 'Raleway',
                ),)),
                // style: ElevatedButton.styleFrom(
                //   primary: Colors.lightBlue,
                //   padding: const EdgeInsets.all(20),
                // ),
                onTap: () async {
                  final path = 'assets/downloads_tab/call-for-paper.pdf';
                  final file = await loadAsset(path);
                  print("Path : " + path);
                  await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PDFViewer(
                        file: file,
                      ),
                    ),
                  );

                },
              ),
            ),
          ),
        ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0,20,0,20),
              child: Container(
                width: mediaQuery.width * 0.50,
                height: mediaQuery.height * 0.10,
                child: Card(
                  elevation: 5,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    child: Center(child: Text('Registration Form',style: TextStyle(
                      fontFamily: 'Raleway',
                    ),)),
                    // style: ElevatedButton.styleFrom(
                    //   primary: Colors.lightBlue,
                    //   padding: const EdgeInsets.all(20),
                    // ),
                    onTap: () async {
                      final path = 'assets/downloads_tab/call-for-paper.pdf';
                      final file = await loadAsset(path);
                      print("Path : " + path);
                      await Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => PDFViewer(
                            file: file,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),

      Padding(
        padding: const EdgeInsets.fromLTRB(0,20,0,20),
        child: Container(
          width: mediaQuery.width * 0.50,
          height: mediaQuery.height * 0.10,
          child: Card(
            elevation: 5,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: InkWell(
              child: Center(child: Text('Copyright Form',style: TextStyle(
                fontFamily: 'Raleway',
              ),)),
              // style: ElevatedButton.styleFrom(
              //   primary: Colors.lightBlue,
              //   padding: const EdgeInsets.all(20),
              // ),
              onTap: () async {
                final path = 'assets/downloads_tab/call-for-paper.pdf';
                final file = await loadAsset(path);
                print("Path : " + path);
                await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PDFViewer(
                      file: file,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
          ],
        ),
      ),
    );
  }
}
