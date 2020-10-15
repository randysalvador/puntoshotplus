import 'dart:convert';
import 'package:flutter/foundation.dart';

class StoreModel {
  int id;
  String name;
  String image;

  StoreModel({this.id, this.name, this.image});

  factory StoreModel.fromStoreStringJson(Map<String, dynamic> map) {
    return StoreModel(id: map["id"], name: map["name"], image: map["image"]);
  }
}

StoreModel storeModelfromJson(String jsonData) {
  final data = json.decode(jsonData);
  return StoreModel.fromStoreStringJson(data);
}

class StoresList {
  final List<StoreModel> data;

  StoresList({this.data});

  factory StoresList.fromJson(List<dynamic> parsedJson) {
    List<StoreModel> stores = new List<StoreModel>();

    return new StoresList(
      data: stores,
    );
  }
}

/* class StoreList {
  final List<StoreModel> data;
  Store({this.data});

  factory Store.fromArrayJson(Map<String, dynamic> json) {
    var list = json as List;
    List<StoreModel> listStore = list.map((e) => StoreModel.fromStoreStringJson(map))
  }
} */

// String values = "{ \" numberPhone \": \" +22565786589\", \"country\":\"CI\"}";
// print(json.decode(values));
