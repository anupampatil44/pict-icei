import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pict_icei/nav-tabs/imageScreen.dart';
import '../models/galleryModel.dart';

final List<String> recentEvents=[

'https://icei-app.s3.filebase.com/Gallery/1-min.jpg',
'https://icei-app.s3.filebase.com/Gallery/10-min.png',
'https://icei-app.s3.filebase.com/Gallery/11-min.png',
'https://icei-app.s3.filebase.com/Gallery/2-min.jpg',
'https://icei-app.s3.filebase.com/Gallery/3-min.png',
'https://icei-app.s3.filebase.com/Gallery/4-min.png',
'https://icei-app.s3.filebase.com/Gallery/5-min.png',
'https://icei-app.s3.filebase.com/Gallery/6-min.png',
];
class gallerylayout extends StatefulWidget{
  @override
  _galleryState createState() => _galleryState();
}

class _galleryState extends State<gallerylayout> {

  @override
  Widget build(BuildContext context) {
  
  final List<Widget> imageSliders = aboutPune
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child:Stack(
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (_){
                          return ImageScreen(
                            imgUrl: item.networkurl,
                            description: item.imgdesc
                            );
                      }
                          ),
                        );
                      },
                      child: CachedNetworkImage(
                        imageUrl: item.networkurl,
                        fit: BoxFit.cover,
                        width: 1000.0,
                        ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              //Color.fromARGB(200, 0, 0, 0),
                              Colors.black,
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          item.imgdesc,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

final List<Widget> imageSliders1 = recentEvents
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child:Stack(
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (_){
                          return ImageScreen(
                            imgUrl: item,
                            description: '',
                            );
                      }
                          ),
                        );
                      },
                      child: CachedNetworkImage(
                        imageUrl: item,
                        fit: BoxFit.cover,
                        width: 1000.0,
                        ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              //Color.fromARGB(200, 0, 0, 0),
                              Colors.black,
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

    return Scaffold(
      appBar: AppBar(
        // title: Text(
        //   "Gallery",
        //   style: TextStyle(
        //     fontFamily: 'Raleway',
        //   ),
        // ),
        // centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
        body:Container(
          decoration:BoxDecoration(
            image: DecorationImage(
              colorFilter:  ColorFilter.mode(
              Colors.black.withOpacity(0.4), BlendMode.dstATop),
              image: AssetImage('assets/pict_3.jpg'),
              fit: BoxFit.cover,
            ),
          ) ,
          //margin: EdgeInsets.fromLTRB(0,0,0,10),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
            child: ListView(
              //padding: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 15, right: 15),
              physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.05,
                ),
                Center(
                  child:Text('Gallery',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily:'Raleway',
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.015,
                ),
                Center(child: Text("About Pune",style: TextStyle(
                fontSize: 20,
                fontFamily: "Raleway",
                fontWeight: FontWeight.bold,),)
              ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Center(child: Text("Check out the gallery of Pune's famous places",style: TextStyle(
                    fontFamily: "Raleway",
                    fontSize: 16.0,
                    ),
                    textAlign: TextAlign.center,
                    )
                  ),
                ),
                Divider(
                  height: 20.0,
                  thickness: 2,
                  color: Colors.white,
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  height: 295.0,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                    ),
                    items:imageSliders,
                  ),
                  // child: GridView(
                  //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //       crossAxisCount: 1,
                  //     ),
                  //     // padding: EdgeInsets.only(left: 5,right: 5),
                  //     scrollDirection: Axis.horizontal,
                  //     physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                  //     shrinkWrap: true,
                  //     children:<Widget>[
                  //       Center(
                  //         child: GestureDetector(
          
                  //             onTap: () {
                  //               Navigator.push(context,
                  //                   MaterialPageRoute(builder: (_) {
                  //                     return FullScreenImage(
                  //                       imageUrl:
                  //                       './assets/aboutpune/Dagadusheth_Ganpati.png',
                  //                       tag: "i1",
                  //                     );
                  //                   }));
                  //             },
          
                  //             child: Padding(
                  //               padding: const EdgeInsets.all(8.0),
                  //               child: Hero(
                  //                 tag: "i1",
                  //                 child: InteractiveViewer(
                  //                   child: new Image.asset('./assets/aboutpune/Dagadusheth_Ganpati.png',),
                  //                 ),
                  //               ),
                  //             )
                  //         ),
                  //       ),
                  //       Center(
                  //         child: GestureDetector(
          
                  //             onTap: () {
                  //               Navigator.push(context,
                  //                   MaterialPageRoute(builder: (_) {
                  //                     return FullScreenImage(
                  //                       imageUrl:
                  //                       './assets/aboutpune/2-Savitribai_Phule_University_Main_Building.jpg',
                  //                       tag: "i1",
                  //                     );
                  //                   }));
                  //             },
          
                  //             child: Padding(
                  //               padding: const EdgeInsets.all(8.0),
                  //               child: Hero(
                  //                 tag: "i1",
                  //                 child: InteractiveViewer(
                  //                   child: new Image.asset('./assets/aboutpune/2-Savitribai_Phule_University_Main_Building.jpg'),
                  //                 ),
                  //               ),
                  //             )
                  //         ),
                  //       ),
                  //       Center(
                  //         child: GestureDetector(
          
                  //             onTap: () {
                  //               Navigator.push(context,
                  //                   MaterialPageRoute(builder: (_) {
                  //                     return FullScreenImage(
                  //                       imageUrl:
                  //                       'assets/placeholder.png',
                  //                       tag: "i1",
                  //                     );
                  //                   }));
                  //             },
          
                  //             child: Padding(
                  //               padding: const EdgeInsets.all(8.0),
                  //               child: Hero(
                  //                 tag: "i1",
                  //                 child: InteractiveViewer(
                  //                   child: new Image.asset('assets/placeholder.png'),
                  //                 ),
                  //               ),
                  //             )
                  //         ),
                  //       ),
                  //       Center(
                  //         child: GestureDetector(
          
                  //             onTap: () {
                  //               Navigator.push(context,
                  //                   MaterialPageRoute(builder: (_) {
                  //                     return FullScreenImage(
                  //                       imageUrl:
                  //                       'assets/placeholder.png',
                  //                       tag: "i1",
                  //                     );
                  //                   }));
                  //             },
          
                  //             child: Padding(
                  //               padding: const EdgeInsets.all(8.0),
                  //               child: Hero(
                  //                 tag: "i1",
                  //                 child: InteractiveViewer(
                  //                   child: new Image.asset('assets/placeholder.png',),
                  //                 ),
                  //               ),
                  //             )
                  //         ),
                  //       ),
                  //     ]
                  //     ),
                ),
                Center(child: Text("Recent Events",style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Raleway",
                  fontWeight: FontWeight.bold,),)),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Center(child: Text("Check our gallery from the recent events",style: TextStyle(
                    fontFamily: "Raleway",
                    fontSize: 16,
                    ),)
                  ),
                ),
                Divider(
                  height: 20.0,
                  thickness: 2,
                  color: Colors.white,
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  height: 295.0,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                    ),
                    items:imageSliders1,
                  ),
                  // child: GridView(
                  //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //       crossAxisCount: 1,
                  //     ),
                  //     padding: EdgeInsets.all(1),
                  //     scrollDirection: Axis.horizontal,
                  //     physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                  //     shrinkWrap: true,
                  //     children:<Widget>[
                  //       Center(
                  //         child: GestureDetector(
          
                  //             onTap: () {
                  //               Navigator.push(context,
                  //                   MaterialPageRoute(builder: (_) {
                  //                     return FullScreenImage(
                  //                       imageUrl:
                  //                       './assets/gallery/4.png',
                  //                       tag: "i1",
                  //                     );
                  //                   }));
                  //             },
          
                  //             child: Padding(
                  //               padding: const EdgeInsets.all(8.0),
                  //               child: Hero(
                  //                 tag: "i1",
                  //                 child: InteractiveViewer(
                  //                   child: new Image.asset('./assets/gallery/4.png'),
                  //                 ),
                  //               ),
                  //             )
                  //         ),
                  //       ),
                  //       Center(
                  //         child: GestureDetector(
          
                  //             onTap: () {
                  //               Navigator.push(context,
                  //                   MaterialPageRoute(builder: (_) {
                  //                     return FullScreenImage(
                  //                       imageUrl:
                  //                       './assets/gallery/2.jpg',
                  //                       tag: "i1",
                  //                     );
                  //                   }));
                  //             },
          
                  //             child: Padding(
                  //               padding: const EdgeInsets.all(8.0),
                  //               child: Hero(
                  //                 tag: "i1",
                  //                 child: InteractiveViewer(
                  //                   child: new Image.asset('./assets/gallery/2.jpg'),
                  //                 ),
                  //               ),
                  //             )
                  //         ),
                  //       ),
                  //       Center(
                  //         child: GestureDetector(
          
                  //             onTap: () {
                  //               Navigator.push(context,
                  //                   MaterialPageRoute(builder: (_) {
                  //                     return FullScreenImage(
                  //                       imageUrl:
                  //                       'assets/placeholder.png',
                  //                       tag: "i1",
                  //                     );
                  //                   }));
                  //             },
          
                  //             child: Hero(
                  //               tag: "i1",
                  //               child: InteractiveViewer(
                  //                 child: new Image.asset('assets/placeholder.png'),
                  //               ),
                  //             )
                  //         ),
                  //       ),
                  //       Center(
                  //         child: GestureDetector(
          
                  //             onTap: () {
                  //               Navigator.push(context,
                  //                   MaterialPageRoute(builder: (_) {
                  //                     return FullScreenImage(
                  //                       imageUrl:
                  //                       'assets/placeholder.png',
                  //                       tag: "i1",
                  //                     );
                  //                   }));
                  //             },
          
                  //             child: Hero(
                  //               tag: "i1",
                  //               child: InteractiveViewer(
                  //                 child: new Image.asset('assets/placeholder.png',),
                  //               ),
                  //             )
                  //         ),
                  //       ),
                  //     ]),
                )
              ],
            ),
          ),
        ),
    );
    }
}

// class FullScreenImage extends StatelessWidget {
//   final String imageUrl;
//   final String tag;

//   const FullScreenImage({Key? key, required this.imageUrl, required this.tag}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black87,
//       body: GestureDetector(
//         child: Center(
//           child: Hero(
//             tag: tag,
//             child: InteractiveViewer(
//               child: Image.asset(this.imageUrl,
//                 fit: BoxFit.fitWidth,
//                 height: double.infinity,
//                 width: double.infinity,
//                 alignment: Alignment.center,
//               ),
//             ),
//           ),
//         ),
//         onTap: () {
//           Navigator.pop(context);
//         },
//       ),
//     );
//   }
// }

