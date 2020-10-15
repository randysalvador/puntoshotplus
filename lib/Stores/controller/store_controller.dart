import 'package:get/get.dart';
import 'dart:async';
import 'package:puntoshots/Stores/model/store_model.dart';

import 'package:flutter/services.dart' show rootBundle;

class StoreController extends GetxController {
  String dataString;
  @override
  onInit() {
    super.onInit();
    getAllStores();
  }

  //String baseUrl = "http://192.168.13.101:3000/";
  Store store = Store();
  Future<List<Store>> getAllStores() async {
    //final response = await store.get("$baseUrl/posts/");
    final response = await rootBundle.loadString('stores.json');
    print(response);
    if (/*response.statusCode == 200*/ response == '') {
      return allStoresFromJson(/*response.body*/ response);
    } else {
      return null;
    }
  }
}

/*Future<void> getJson() async {
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
  } */

/*//-------------UseData
Future<UserData> getUserData(String uid) async {
  final response = await client.get("$baseUrl/users/$uid");
  if (response.statusCode == 200) {
    return userDataFromJSON(response.body);
  } else {
    return null;
  }
}
Future<List<Users>> getAllUser() async {
  final response = await client.get("$baseUrl/users/");
  if (response.statusCode == 200) {
    return AllUsersFromJSON(response.body);
  } else {
    return null;
  }
}*/
