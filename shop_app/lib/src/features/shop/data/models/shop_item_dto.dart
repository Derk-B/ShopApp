class ShopItemDTO {
  final String id;
  final String title;
  final String description;
  final num price;

  const ShopItemDTO({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
  });

  static ShopItemDTO fromJson(json) {
    return ShopItemDTO(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        price: json["price"]);
  }
}
