import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OfferPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Descuentos & Promociones',
            style: GoogleFonts.mavenPro(
                fontSize: 20, fontWeight: FontWeight.bold)),
        backgroundColor: Color(0xFF0058A3),
      ),
      body: Container(
        color: Colors.black12,
      ),
    );
  }
}
