import 'dart:convert';

class Store {
  int id;
  String name;
  String image;

  Store({this.id, this.name, this.image});

  factory Store.fromJson(Map<String, dynamic> map) {
    return Store(id: map["id"], name: map["name"], image: map["image"]);
  }
}

List<Store> allStoresFromJson(String jsonData) {
  final data = json.decode(jsonData);
  return List<Store>.from(data.map((item) => Store.fromJson(item)));
}

/*class StoresList {
  final List<Store> data;

  StoresList({this.data});

  factory StoresList.fromJson(List<dynamic> parsedJson) {
    List<Store> stores = new List<Store>();
    return new StoresList(
      data: stores,
    );
  }

  StoreModel storeModelfromJson(String jsonData) {
  final data = json.decode(jsonData);
  return StoreModel.fromStoreStringJson(data);
  }

}*/

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
