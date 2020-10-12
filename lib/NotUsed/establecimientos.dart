import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:puntoshots/NotUsed/presentation.dart';
import 'package:puntoshots/NotUsed/descuentosPromociones.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'My app title', home: new Presentacion());
  }
}

class Establecimientos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Establecimientos',
              style: GoogleFonts.mavenPro(
                  fontSize: 20, fontWeight: FontWeight.bold)),
          backgroundColor: Color(0xFF0058A3),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        //shadowColor: Colors.blueAccent,
                        //elevation: 10,
                        child: ClipPath(
                          clipper: ShapeBorderClipper(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: Container(
                            height: 151.79,
                            width: 151.79,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                            ),
                            padding: EdgeInsets.all(10.0),
                            alignment: Alignment.centerLeft,
                            child: Container(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          ImagenCafe(),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Get.to(DescuentosPromociones());
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      //onTap: () => NewScreen(),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        //shadowColor: Colors.blueAccent,
                        //elevation: 10,
                        child: ClipPath(
                          clipper: ShapeBorderClipper(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: Container(
                            height: 151.79,
                            width: 151.79,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                            ),
                            padding: EdgeInsets.all(10.0),
                            alignment: Alignment.centerLeft,
                            child: Container(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          ImagenTony(),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        //shadowColor: Colors.blueAccent,
                        //elevation: 10,
                        child: ClipPath(
                          clipper: ShapeBorderClipper(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: Container(
                              height: 151.79,
                              width: 151.79,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                              ),
                              padding: EdgeInsets.all(10.0),
                              alignment: Alignment.centerLeft,
                              child: Container(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            ImagenTerco(),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      //onTap: () => NewScreen(),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        //shadowColor: Colors.blueAccent,
                        //elevation: 10,
                        child: ClipPath(
                          clipper: ShapeBorderClipper(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: Container(
                              height: 151.79,
                              width: 151.79,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                              ),
                              padding: EdgeInsets.all(10.0),
                              alignment: Alignment.centerLeft,
                              child: Container(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            ImagenDospollos(),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        //shadowColor: Colors.blueAccent,
                        //elevation: 10,
                        child: ClipPath(
                          clipper: ShapeBorderClipper(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: Container(
                              height: 151.79,
                              width: 151.79,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                              ),
                              padding: EdgeInsets.all(10.0),
                              alignment: Alignment.centerLeft,
                              child: Container(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            ImagenLacalle(),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      //onTap: () => NewScreen(),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        //shadowColor: Colors.blueAccent,
                        //elevation: 10,
                        child: ClipPath(
                          clipper: ShapeBorderClipper(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: Container(
                              height: 151.79,
                              width: 151.79,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                              ),
                              padding: EdgeInsets.all(10.0),
                              alignment: Alignment.centerLeft,
                              child: Container(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            ImagenLeo(),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        //shadowColor: Colors.blueAccent,
                        //elevation: 10,
                        child: ClipPath(
                          clipper: ShapeBorderClipper(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: Container(
                              height: 151.79,
                              width: 151.79,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                              ),
                              padding: EdgeInsets.all(10.0),
                              alignment: Alignment.centerLeft,
                              child: Container(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            ImagenHotchili(),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      //onTap: () => NewScreen(),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        //shadowColor: Colors.blueAccent,
                        //elevation: 10,
                        child: ClipPath(
                          clipper: ShapeBorderClipper(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: Container(
                              height: 151.79,
                              width: 151.79,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                              ),
                              padding: EdgeInsets.all(10.0),
                              alignment: Alignment.centerLeft,
                              child: Container(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            ImagenLalupita(),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ));
  }
}

class ImagenTony extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('img/tony.png');
    Image image = Image(
      image: assetImage,
      width: 127,
      height: 127,
    );
    return Container(
      child: image,
    );
  }
}

class ImagenTerco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('img/terco.png');
    Image image = Image(
      image: assetImage,
      width: 127,
      height: 127,
    );
    return Container(
      child: image,
    );
  }
}

class ImagenHotchili extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('img/hotchili.png');
    Image image = Image(
      image: assetImage,
      width: 127,
      height: 127,
    );
    return Container(
      child: image,
    );
  }
}

class ImagenLalupita extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('img/lalupita.png');
    Image image = Image(
      image: assetImage,
      width: 127,
      height: 127,
    );
    return Container(
      child: image,
    );
  }
}

class ImagenLeo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('img/leo.png');
    Image image = Image(
      image: assetImage,
      width: 127,
      height: 127,
    );
    return Container(
      child: image,
    );
  }
}

class ImagenLacalle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('img/lacalle.png');
    Image image = Image(
      image: assetImage,
      width: 127,
      height: 127,
    );
    return Container(
      child: image,
    );
  }
}

class ImagenDospollos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('img/dospollos.png');
    Image image = Image(
      image: assetImage,
      width: 127,
      height: 127,
    );
    return Container(
      child: image,
    );
  }
}

class ImagenCafe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('img/cafe.png');
    Image image = Image(
      image: assetImage,
      width: 127,
      height: 127,
    );
    return Container(
      child: image,
    );
  }
}
