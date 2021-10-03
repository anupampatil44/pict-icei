import 'package:flutter/material.dart';
import 'package:pict_icei/pages/gallery.dart';

class Tab2 extends StatelessWidget {
  const Tab2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.only(top: 20),
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [Center(child: Text("ABOUT PUNE",style: TextStyle(
          fontSize: 22,
          fontFamily: "Raleway",
          fontWeight: FontWeight.bold,),)
        ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
            child: Center(child: Text("Check out gallery of Pune\'s famous places",style: TextStyle(
              fontFamily: "Raleway",),)
            ),
          ),
        Container(
          margin: EdgeInsets.all(5.0),
          height: 295.0,
          child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
              ),
              // padding: EdgeInsets.only(left: 5,right: 5),
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              shrinkWrap: true,
              children:<Widget>[
                Center(
                  child: GestureDetector(

                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) {
                              return FullScreenImage(
                                imageUrl:
                                './assets/aboutpune/Dagadusheth_Ganpati.png',
                                tag: "i1",
                              );
                            }));
                      },

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Hero(
                          tag: "i1",
                          child: InteractiveViewer(
                            child: new Image.asset('./assets/aboutpune/Dagadusheth_Ganpati.png',),
                          ),
                        ),
                      )
                  ),
                ),
                Center(
                  child: GestureDetector(

                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) {
                              return FullScreenImage(
                                imageUrl:
                                './assets/aboutpune/2-Savitribai_Phule_University_Main_Building.jpg',
                                tag: "i1",
                              );
                            }));
                      },

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Hero(
                          tag: "i1",
                          child: InteractiveViewer(
                            child: new Image.asset('./assets/aboutpune/2-Savitribai_Phule_University_Main_Building.jpg'),
                          ),
                        ),
                      )
                  ),
                ),
                Center(
                  child: GestureDetector(

                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) {
                              return FullScreenImage(
                                imageUrl:
                                'assets/placeholder.png',
                                tag: "i1",
                              );
                            }));
                      },

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Hero(
                          tag: "i1",
                          child: InteractiveViewer(
                            child: new Image.asset('assets/placeholder.png'),
                          ),
                        ),
                      )
                  ),
                ),
                Center(
                  child: GestureDetector(

                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) {
                              return FullScreenImage(
                                imageUrl:
                                'assets/placeholder.png',
                                tag: "i1",
                              );
                            }));
                      },

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Hero(
                          tag: "i1",
                          child: InteractiveViewer(
                            child: new Image.asset('assets/placeholder.png',),
                          ),
                        ),
                      )
                  ),
                ),
              ]),
        ),
          Center(child: Text("Recent Events",style: TextStyle(
            fontSize: 22,
            fontFamily: "Raleway",
            fontWeight: FontWeight.bold,),)),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
            child: Center(child: Text("Check our gallery from the recent events",style: TextStyle(
              fontFamily: "Raleway",),)
            ),
          ),
          Container(
            margin: EdgeInsets.all(5.0),
            height: 295.0,
            child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
            ),
                padding: EdgeInsets.all(1),
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                shrinkWrap: true,
                children:<Widget>[
                  Center(
                    child: GestureDetector(

                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                                return FullScreenImage(
                                  imageUrl:
                                  './assets/gallery/4.png',
                                  tag: "i1",
                                );
                              }));
                        },

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Hero(
                            tag: "i1",
                            child: InteractiveViewer(
                              child: new Image.asset('./assets/gallery/4.png'),
                            ),
                          ),
                        )
                    ),
                  ),
                  Center(
                    child: GestureDetector(

                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                                return FullScreenImage(
                                  imageUrl:
                                  './assets/gallery/2.jpg',
                                  tag: "i1",
                                );
                              }));
                        },

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Hero(
                            tag: "i1",
                            child: InteractiveViewer(
                              child: new Image.asset('./assets/gallery/2.jpg'),
                            ),
                          ),
                        )
                    ),
                  ),
                  Center(
                    child: GestureDetector(

                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                                return FullScreenImage(
                                  imageUrl:
                                  'assets/placeholder.png',
                                  tag: "i1",
                                );
                              }));
                        },

                        child: Hero(
                          tag: "i1",
                          child: InteractiveViewer(
                            child: new Image.asset('assets/placeholder.png'),
                          ),
                        )
                    ),
                  ),
                  Center(
                    child: GestureDetector(

                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                                return FullScreenImage(
                                  imageUrl:
                                  'assets/placeholder.png',
                                  tag: "i1",
                                );
                              }));
                        },

                        child: Hero(
                          tag: "i1",
                          child: InteractiveViewer(
                            child: new Image.asset('assets/placeholder.png',),
                          ),
                        )
                    ),
                  ),
                ]),
          )
      ],
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
              child: Image.asset(this.imageUrl,
                fit: BoxFit.fitWidth,
                height: double.infinity,
                width: double.infinity,
                alignment: Alignment.center,
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
