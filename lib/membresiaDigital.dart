import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:puntoshots/presentation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'My app title', home: new Presentacion());
  }
}

class MembresiaDigital extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Membresía Digital',
              style: GoogleFonts.mavenPro(
                  fontSize: 20, fontWeight: FontWeight.bold)),
          backgroundColor: Color(0xFF0058A3),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    //shadowColor: Colors.blueAccent,
                    //elevation: 5,
                    child: ClipPath(
                      clipper: ShapeBorderClipper(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: Container(
                          height: 337,
                          width: 305,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFF),
                          ),
                          padding: EdgeInsets.all(10.0),
                          alignment: Alignment.center,
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
                                        ImagenMembresia(),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                ],
              ),
              /*Padding(
                padding: const EdgeInsets.all(1.0),
                child: Icon(
                  Icons.qr_code_scanner_sharp,
                  size: 45,
                  color: Color(0xFF0058A3),
                ),
              ),*/
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  child: Row(
                    children: [
                      Text('Membresía',
                          style: GoogleFonts.mavenPro(
                              fontSize: 18,
                              color: Color(0xFF0058A3),
                              fontWeight: FontWeight.bold)),
                      Spacer(),
                      Container(
                        child: Text('PUNTOS',
                            style: GoogleFonts.bebasNeue(fontSize: 25)),
                      ),
                      Container(
                        child: Text('HOT ',
                            style: GoogleFonts.caveat(
                                fontSize: 40,
                                color: Color(0xFFE01218),
                                fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        child: Text('+',
                            style: GoogleFonts.mavenPro(
                                fontSize: 40,
                                color: Color(0xFFE01218),
                                fontWeight: FontWeight.bold)),
                      ),
                      /* Padding(
                padding: const EdgeInsets.all(20.0),
                child: Icon(
                  FontAwesomeIcons.angleRight,
                  size: 20,
                  color: Colors.grey,
                ),
              ),*/
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  child: Row(
                    children: [
                      Text('Vencimiento',
                          style: GoogleFonts.mavenPro(
                              fontSize: 18,
                              color: Color(0xFF0058A3),
                              fontWeight: FontWeight.bold)),
                      Spacer(),
                      Text('02/01/2020',
                          style: GoogleFonts.mavenPro(
                              fontSize: 18, color: Color(0xFF000000)))
                      /* Padding(
                padding: const EdgeInsets.all(20.0),
                child: Icon(
                  FontAwesomeIcons.angleRight,
                  size: 20,
                  color: Colors.grey,
                ),
              ),*/
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  child: Row(
                    children: [
                      Text('Suscriptor',
                          style: GoogleFonts.mavenPro(
                              fontSize: 18,
                              color: Color(0xFF0058A3),
                              fontWeight: FontWeight.bold)),
                      Spacer(),
                      Text('Randy Salvador',
                          style: GoogleFonts.mavenPro(
                              fontSize: 18, color: Color(0xFF000000)))
                      /* Padding(
                padding: const EdgeInsets.all(20.0),
                child: Icon(
                  FontAwesomeIcons.angleRight,
                  size: 20,
                  color: Colors.grey,
                ),
              ),*/
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  child: Row(
                    children: [
                      Text('No. Membresía',
                          style: GoogleFonts.mavenPro(
                              fontSize: 18,
                              color: Color(0xFF0058A3),
                              fontWeight: FontWeight.bold)),
                      Spacer(),
                      Text('150994',
                          style: GoogleFonts.mavenPro(
                              fontSize: 18, color: Color(0xFF000000)))
                      /* Padding(
                padding: const EdgeInsets.all(20.0),
                child: Icon(
                  FontAwesomeIcons.angleRight,
                  size: 20,
                  color: Colors.grey,
                ),
              ),*/
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class ImagenMembresia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('img/membresia.png');
    Image image = Image(
      image: assetImage,
      width: 285,
      height: 317,
    );
    return Container(
      child: image,
    );
  }
}
