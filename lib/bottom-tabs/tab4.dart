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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: mediaQuery.height * 0.05),
            Text(
              'Downloads Page',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: mediaQuery.height * 0.05),
            ElevatedButton(
              child: Text('Call For Paper'),
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlue,
                padding: const EdgeInsets.all(20),
              ),
              onPressed: () async {
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
            SizedBox(height: mediaQuery.height * 0.05),
            ElevatedButton(
              onPressed: () {},
              child: Text('Conference Brochure'),
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlue,
                padding: const EdgeInsets.all(20),
              ),
            ),
            SizedBox(height: mediaQuery.height * 0.05),
            ElevatedButton(
              onPressed: () {},
              child: Text('Registration Form'),
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlue,
                padding: const EdgeInsets.all(20),
              ),
            ),
            SizedBox(height: mediaQuery.height * 0.05),
            ElevatedButton(
              onPressed: () {},
              child: Text('Copyright Form'),
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlue,
                padding: const EdgeInsets.all(20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
