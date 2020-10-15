class Offer {
  final int id;
  final String title;
  final String description;
  final int storeId;
  final List<Image> images;

  Offer({this.id, this.title, this.description, this.storeId, this.images});

  factory Offer.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['images'] as List;
    print(list.runtimeType); //returns List<dynamic>
    List<Image> imagesList = list.map((i) => Image.fromJson(i)).toList();

    return Offer(
        id: parsedJson["id"],
        storeId: parsedJson["store_id"],
        title: parsedJson["title"],
        description: parsedJson["description"],
        images: imagesList);
  }
}

class Image {
  final String url;
  Image({this.url});

  factory Image.fromJson(Map<String, dynamic> parsedJson) {
    return Image(url: parsedJson['url']);
  }
}
