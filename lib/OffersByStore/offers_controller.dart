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

  Future<Offer> getOffersByStoreId(/*int storeId*/) async {
    //final response = await http.get("$baseUrl/offers/storeId");
    final response = await rootBundle.loadString('stores.json');
    final jsonResponse = json.decode(response);
    return Offer.fromJson(jsonResponse);
  }
}
