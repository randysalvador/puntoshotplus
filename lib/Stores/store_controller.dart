import 'package:get/get.dart';
import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;
import 'store_model.dart';

class StoreController extends GetxController {
  String dataString;
  @override
  onInit() {
    super.onInit();
    getAllStores();
  }

  //String baseUrl = "http://192.168.13.101:3000/";

  // <String loadJson;
  // Future loadAsset() async {
  //   loadJson = await rootBundle.loadString('assets/stores.json');
  //   print(loadJson);
  //   await getAllStores();
  // }>

  Future<List<Store>> getAllStores() async {
    //final response = await store.get("$baseUrl/store/");

    final response = await rootBundle.loadString('assests/stores.json');

    //store = allStoresFromJson(/*response.body*/ response);
    return allStoresFromJson(response);
    //print(response);
    // if (/*response.statusCode == 200*/ response == '') {
    //   print("<<<< FATAL ERROR >>>>");
    // } else {
    // }
  }

  // List<Store> store = await getAllStores() as List<Store>;
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
