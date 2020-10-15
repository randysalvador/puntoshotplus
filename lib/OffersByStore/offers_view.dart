import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'offers_controller.dart';
import 'offers_model.dart';

class OfferPage extends StatelessWidget {
  final OfferController offerController =
      Get.put<OfferController>(OfferController());
  final int id_store;
  OfferPage({Key key, this.id_store});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OfferController>(
      init: offerController,
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('Descuentos & Promociones',
              style: GoogleFonts.mavenPro(
                  fontSize: 15, fontWeight: FontWeight.bold)),
          backgroundColor: Color(0xFF0058A3),
        ),
        body: SingleChildScrollView(
          primary: true,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.amber,
                  width: double.infinity,
                  height: 150,
                  // child: Image.network(
                  //     "https://www.viveterranova.com.mx/images/locales/cafe-la-cabana.png",
                  //     fit: BoxFit.fitHeight),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: FutureBuilder(
                  future: _.getOffersByStoreId(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<Offer> offers = snapshot.data ?? [];
                      return ListView.builder(
                        primary: false,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: offers.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.black,
                            height: 250,
                            child: Image.network(snapshot.data[index].url,
                                fit: BoxFit.fitHeight),
                          ),
                        ),
                      );
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
