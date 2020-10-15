import 'package:puntoshots/Membership/membership_view.dart';
import 'package:puntoshots/NotUsed/establecimientos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:puntoshots/Stores/store_view.dart';

class Presentacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: cardWidget(context),
    );
  }
}

Widget cardWidget(BuildContext context) {
  return Column(
    children: <Widget>[
      Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Container(
          child: Text('PUNTOS', style: GoogleFonts.bebasNeue(fontSize: 50)),
        ),
        Container(
          child: Text('HOT ',
              style: GoogleFonts.caveat(
                  fontSize: 70,
                  color: Color(0xFFE01218),
                  fontWeight: FontWeight.bold)),
        ),
        Container(
          child: Text('+',
              style: GoogleFonts.mavenPro(
                  fontSize: 70,
                  color: Color(0xFFE01218),
                  fontWeight: FontWeight.bold)),
        ),
      ]),
      Container(
        child: Text('Encuentra las mejores ofertas',
            style: GoogleFonts.fjallaOne(
                fontSize: 20, fontWeight: FontWeight.bold)),
      ),
      SizedBox(
        height: 10.0,
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
              height: 70,
              width: 280,
              decoration: BoxDecoration(
                color: Color(0xFF0058A3),
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
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.store,
                            size: 26,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Establecimientos',
                              style: GoogleFonts.rubik(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 1),
                    Row(),
                    SizedBox(height: 1),
                    Row(),
                  ],
                ),
              ),
            ),
          ),
        ),
        onTap: () {
          Get.to(Establecimientos());
        },
      ),
      SizedBox(
        height: 5.0,
      ),
      GestureDetector(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: ClipPath(
            clipper: ShapeBorderClipper(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            child: Container(
              height: 70,
              width: 280,
              decoration: BoxDecoration(
                color: Color(0xFF0058A3),
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
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.card_membership,
                            size: 26,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Membresía Digital',
                              style: GoogleFonts.rubik(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 1),
                    Row(),
                    SizedBox(height: 1),
                    Row(),
                  ],
                ),
              ),
            ),
          ),
        ),
        onTap: () {
          Get.to(StoreView());
        },
      ),
      SizedBox(
        height: 5.0,
      ),
      GestureDetector(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: ClipPath(
            clipper: ShapeBorderClipper(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            child: Container(
                height: 70,
                width: 280,
                decoration: BoxDecoration(
                  color: Color(0xff0058A3),
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
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.web,
                              size: 26,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Sitio Web',
                                style: GoogleFonts.rubik(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 1),
                      Row(),
                      SizedBox(height: 1),
                      Row(),
                    ],
                  ),
                )),
          ),
        ),
      ),
      SizedBox(
        height: 5.0,
      ),
      ImagenInicioAsset(),
    ],
  );
}

class ImagenInicioAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('img/inicio.png');
    Image image = Image(
      image: assetImage,
      width: 367,
      height: 226,
    );
    return Container(
      child: image,
    );
  }
}
