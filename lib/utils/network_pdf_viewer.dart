import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:url_launcher/url_launcher.dart';

class NewtorkPdfViewer extends StatefulWidget {
  final String link;
  final String title;
  const NewtorkPdfViewer({
    required this.title,
    required this.link,
  });

  @override
  _NewtorkPdfViewerState createState() => _NewtorkPdfViewerState();
}

class _NewtorkPdfViewerState extends State<NewtorkPdfViewer> {
    launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: false);
    } else {
      throw 'Could not launch $url';
    }
  }
  late PdfViewerController _pdfViewerController;

  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        title: Text(
          widget.title,
        ),
        backgroundColor: Color(0xFF0a1931),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.download,
              color: Colors.white,
            ),
            onPressed: () async {
              await launchURL(widget.link);
            },
          ),
        ],
      ),
      body: Container(
        child: SfPdfViewer.network(
          widget.link,
          onDocumentLoadFailed: (PdfDocumentLoadFailedDetails details) {
            print("FAIL");
          },
        ),
      ),
    );
  }
}
