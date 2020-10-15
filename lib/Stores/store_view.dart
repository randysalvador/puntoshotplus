import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:puntoshots/OffersByStore/offers_view.dart';
import 'store_controller.dart';
import 'store_model.dart';

class StoreView extends StatelessWidget {
  final StoreController storeController =
      Get.put<StoreController>(StoreController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<StoreController>(
      init: storeController,
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('Tiendas'),
        ),
        body: Container(
          child: FutureBuilder(
            future: _.getAllStores(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Store> stores = snapshot.data ?? [];
                return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemCount: stores.length,
                    itemBuilder: (context, index) => storeCard(
                        url: snapshot.data[index].image,
                        storeId: snapshot.data[index].id)
                    // "${snapshot.data[index].id.toString()} >> ${snapshot.data[index].name}"), //Aquí pondras el metodo que necesitas
                    );
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
        ),
      ),
    );
  }

  Widget storeCard({String url, int storeId}) {
    return GestureDetector(
      onTap: () => OfferPage(
        id_store: storeId,
      ),
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
              child: Image.network(url, fit: BoxFit.fitHeight),
            ),
          ),
        ),
      ),
    );
  }
}
