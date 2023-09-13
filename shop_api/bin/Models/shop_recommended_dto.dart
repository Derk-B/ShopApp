class ShopRecommendedDTO {
  String id;
  String title;
  String description;
  num price;

  ShopRecommendedDTO(this.id, this.title, this.description, this.price);

  Map toJson() {
    return {
      "id": id,
      "title": title,
      "description": description,
      "price": price
    };
  }

  static ShopRecommendedDTO fromJson(json) {
    return ShopRecommendedDTO(
        json["id"], json["title"], json["description"], json["price"]);
  }
}
