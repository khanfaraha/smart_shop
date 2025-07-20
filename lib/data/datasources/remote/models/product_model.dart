class ProductModel {
  final int id;
  final String title;
  final double price;
  final String image;
  final double rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.image,
    required this.rating,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      price: (json['price'] as num).toDouble(),
      image: json['image'],
      rating: (json['rating']['rate'] as num).toDouble(),
    );
  }
}
