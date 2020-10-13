import 'package:get/get.dart';
import 'dart:async';
import 'package:puntoshots/Stores/model/store_model.dart';

import 'package:flutter/services.dart' show rootBundle;

class StoreController extends GetxController {
  //"{\"vencimiento\": \"02/01/2050\", \"suscriptor\": \"Randy Salvador\", \"membresia\": \"150994\"}";
  String dataString;
  @override
  onInit() {
    super.onInit();
    getJson();
  }

  Future<void> getJson() async {
    dataString = await rootBundle.loadString('stores.json');
    getStore(dataString);
  }

  StoreModel store;
  Future<void> getStore(String _data) async {
    if (_data == '') {
      print("Error en el sistema xd"); //Widget Mensaje error
    } else {
      store = storeModelfromJson(_data);
      print(store.id);
      print(store.name);
      print(store.image);
    }
  }
}
