// lib/data/models/product_model.dart

class Product {
  final String thumbnail;
  final String title;
  final String description;
  final double price;
  final double? oldPrice;
  final double rating;

  Product({
    required this.thumbnail,
    required this.title,
    required this.description,
    required this.price,
    this.oldPrice,
    required this.rating,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      thumbnail: json['thumbnail'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      oldPrice: json['oldPrice'] != null
          ? (json['oldPrice'] as num).toDouble()
          : null,
      rating: (json['rating'] as num).toDouble(),
    );
  }
}
