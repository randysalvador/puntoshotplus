import 'package:get/get.dart';
import 'dart:async';
import 'package:puntoshots/Stores/model/store_model.dart';

import 'package:flutter/services.dart' show rootBundle;

class StoreController extends GetxController {
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

  List<StoreModel> store = [];
  Future<void> getStore(String _data) async {
    if (_data == '') {
      print("Error en el sistema xd"); //Widget Mensaje error
    } else {
      store = storeModelfromJson(_data) as List<StoreModel>;
      print(store[0].id);
      print(store[0].name);
      print(store[0].image);
    }
  }
}
