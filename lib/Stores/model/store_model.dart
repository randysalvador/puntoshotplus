import 'dart:convert';

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

// String values = "{ \" numberPhone \": \" +22565786589\", \"country\":\"CI\"}";
// print(json.decode(values));
