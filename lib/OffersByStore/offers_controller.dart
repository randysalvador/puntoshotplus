import 'dart:convert';

import 'package:get/get.dart';
import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;
import 'package:puntoshots/OffersByStore/offers_model.dart';

class OfferController extends GetxController {
  @override
  onInit() {
    super.onInit();
    getOffersByStoreId();
  }

  Future getOffersByStoreId(/*int storeId*/) async {
    //final response = await http.get("$baseUrl/offers/storeId");
    final response = await rootBundle.loadString('assets/stores.json');
    final jsonResponse = json.decode(response);
    Offer offer = Offer.fromJson(jsonResponse);
    print(offer.images[0].url);
  }
}
