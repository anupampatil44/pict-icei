import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

// ignore: must_be_immutable
class ImageScreen extends StatefulWidget {
  //const ImageScreen({ Key? key }) : super(key: key);
  String imgUrl;
  String description;

  ImageScreen({
    required this.imgUrl,
    required this.description,
  });
  @override
  _ImageScreenState createState() => _ImageScreenState(imgUrl,description);
}

class _ImageScreenState extends State<ImageScreen> {

  String imgUrl;
  String description;
  _ImageScreenState(this.imgUrl,this.description);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:AppBar(
        title: Text(
          description,
          style: TextStyle(
            fontFamily: 'Raleway',
          ),
        ),
        centerTitle: true,
        //shadowColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      extendBodyBehindAppBar: true,
      body:SafeArea(
        child: Center(
          child: Container(
            //color: Colors.black,
            margin: EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child:PhotoView(
                imageProvider: CachedNetworkImageProvider(imgUrl),
                  maxScale: PhotoViewComputedScale.contained * 2.0,
                  minScale: PhotoViewComputedScale.contained,
                  initialScale: PhotoViewComputedScale.contained,
              ),
            ),
          ),
        ),
      ),
    );
  }
}