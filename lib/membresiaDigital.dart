import 'dart:ui';

import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:puntoshots/presentation.dart';
import 'package:get/get.dart';
import 'package:puntoshots/qr_scan_controller.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';


void main() {
  runApp( GetMaterialApp(title: 'My app title', home: new QrCode()));
}

class QrCode extends StatelessWidget {
   final QrScanController qrScanController =
      Get.put<QrScanController>(QrScanController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Membresía Digital',
              style: GoogleFonts.mavenPro(
                  fontSize: 20, fontWeight: FontWeight.bold)),
          backgroundColor: Color(0xFF0058A3),
        ),
        body: GetBuilder<QrScanController>(
          builder: (value) => Container(
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
                          ),
                        ),
                      ),
                      onTap: (){
                         value.scan();
                      } 
                    ),
                  ],
                ),
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
                                  fontWeight: FontWeight.bold),),
                        ),
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
                        Text('${value.Membership.vencimiento}',
                            style: GoogleFonts.mavenPro(
                                fontSize: 18, color: Color(0xFF000000),),),
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
                                fontWeight: FontWeight.bold),),
                        Spacer(),
                        Text('${value.Membership.suscriptor}',
                            style: GoogleFonts.mavenPro(
                                fontSize: 18, color: Color(0xFF000000),),),
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
                        Text('${value.Membership.membresia}',
                            style: GoogleFonts.mavenPro(
                                fontSize: 18, color: Color(0xFF000000),
                                ),
                                ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
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

/*
  _MembresiaDigital createState() => _MembresiaDigital();
}

class _MembresiaDigital extends State<QrCode> {*/
  //String _data = "";
 
 /* _scan() async {
    await FlutterBarcodeScanner.scanBarcode(
            "#0058A3", "Salir", true, ScanMode.QR)
        .then((value) => setState(() => _data = value));
  }*/