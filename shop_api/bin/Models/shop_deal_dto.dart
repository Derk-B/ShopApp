class ShopDealDTO {
  String id;
  String title;
  String description;
  num price;

  ShopDealDTO(this.id, this.title, this.description, this.price);

  Map toJson() {
    return {
      "id": id,
      "title": title,
      "description": description,
      "price": price
    };
  }

  static ShopDealDTO fromJson(json) {
    return ShopDealDTO(
        json["id"], json["title"], json["description"], json["price"]);
  }
}
