class ProductModel {
  final String imageUrl;
  final String name;
  final String type;
  final double price;
  final bool isFavorite;

  ProductModel({
    required this.imageUrl,
    required this.name,
    required this.type,
    required this.price,
    this.isFavorite = false,
  });
}
