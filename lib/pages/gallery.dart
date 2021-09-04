import 'package:flutter/material.dart';

class gallerylayout extends StatefulWidget{
  @override
  _galleryState createState() => _galleryState();
}

class _galleryState extends State<gallerylayout> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
        Center(
          child: ListView(
              physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              children:<Widget>[
                Center(
                  child: GestureDetector(

                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) {
                              return FullScreenImage(
                                imageUrl:
                                'assets/aboutpune/Dagadusheth_Ganpati.png',
                                tag: "i1",
                              );
                            }));
                      },

                      child: Hero(
                        tag: "i1",
                        child: InteractiveViewer(
                          child: new Image.asset('assets/aboutpune/Dagadusheth_Ganpati.png'),
                        ),
                      )
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}


class FullScreenImage extends StatelessWidget {
  final String imageUrl;
  final String tag;

  const FullScreenImage({Key? key, required this.imageUrl, required this.tag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: tag,
            child: InteractiveViewer(
              child: Image.asset('assets/Dagadusheth_Ganpati.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),

    );
  }
}