import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:puntoshots/Membership/membership_controller.dart';
import 'package:get/get.dart';

class QrCode extends StatelessWidget {
  final controller = Get.put(QrScanController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Membresía Digital',
            style: GoogleFonts.mavenPro(
                fontSize: 20, fontWeight: FontWeight.bold)),
        backgroundColor: Color(0xFF0058A3),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: GetBuilder<QrScanController>(
            //id: 'scan',
            init: controller,
            builder: (value) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10),
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
                                        imagenMembresia(),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      onTap: () => value.scan(), //{
                      //QrScanController().scan();
                      //},
                    ),
                  ],
                ),

                Text("${value.membership.membresia}"),
                Text(value.membership.suscriptor),
                Text(value.membership.vencimiento),

                //numeroMembresia(value.membership.membresia),
                //  SizedBox(height: 5),
                //suscriptor(value.membership.suscriptor),
                // SizedBox(height: 5),
                //vencimiento(value.membership.vencimiento),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget numeroMembresia(String _data) {
    return Padding(
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
            Text(
              _data == null ? "fdffd" : "snf",
              style: GoogleFonts.mavenPro(
                fontSize: 18,
                color: Color(0xFF000000),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget suscriptor(String _data) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        child: Row(
          children: [
            Text(
              'Suscriptor',
              style: GoogleFonts.mavenPro(
                  fontSize: 18,
                  color: Color(0xFF0058A3),
                  fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Text(
              _data,
              style: GoogleFonts.mavenPro(
                fontSize: 18,
                color: Color(0xFF000000),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget vencimiento(String _data) {
    return Padding(
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
            Text(
              _data,
              style: GoogleFonts.mavenPro(
                fontSize: 18,
                color: Color(0xFF000000),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget membershipType() {
    return Padding(
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
              child: Text('PUNTOS', style: GoogleFonts.bebasNeue(fontSize: 25)),
            ),
            Container(
              child: Text('HOT ',
                  style: GoogleFonts.caveat(
                      fontSize: 40,
                      color: Color(0xFFE01218),
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              child: Text(
                '+',
                style: GoogleFonts.mavenPro(
                    fontSize: 40,
                    color: Color(0xFFE01218),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget imagenMembresia() {
    AssetImage assetImage = AssetImage('img/membresia.png');
    return Container(
      child: Image(
        image: assetImage,
        width: 285,
        height: 317,
      ),
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
