class Offer {
  final int id;
  final String title;
  final String description;
  final int storeId;
  final List<ImageFromOffer> images;

  Offer({this.id, this.title, this.description, this.storeId, this.images});

  factory Offer.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['images_array'] as List;
    print(list.runtimeType); //returns List<dynamic>
    List<ImageFromOffer> imagesList =
        list.map((i) => ImageFromOffer.fromJson(i)).toList();

    return Offer(
        id: parsedJson["id"],
        storeId: parsedJson["store_id"],
        title: parsedJson["title"],
        description: parsedJson["description"],
        images: imagesList);
  }
}

class ImageFromOffer {
  final String url;
  ImageFromOffer({this.url});

  factory ImageFromOffer.fromJson(Map<String, dynamic> parsedJson) {
    return ImageFromOffer(url: parsedJson['url']);
  }
}
