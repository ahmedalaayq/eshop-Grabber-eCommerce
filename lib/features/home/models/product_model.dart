class ProductModel {
  const ProductModel({
    required this.name,
    required this.image,
    required this.rating,
    required this.ratingCount,
    required this.price,
  });

  final String name;
  final String image;
  final String rating;
  final String ratingCount;
  final String price;

  static const List<ProductModel> products = [
    ProductModel(
      name: "Banana",
      image: "assets/images/banana.png",
      rating: "4.8",
      ratingCount: "(287)",
      price: "\$3.99",
    ),
    ProductModel(
      name: "Pepper",
      image: "assets/images/pepper.png",
      rating: "4.5",
      ratingCount: "(280)",
      price: "\$2.99",
    ),  ProductModel(
      name: "Banana",
      image: "assets/images/orange.png",
      rating: "4.8",
      ratingCount: "(250)",
      price: "\$5.99",
    ),
    ProductModel(
      name: "Limoun",
      image: "assets/images/limoun.png",
      rating: "4.5",
      ratingCount: "(260)",
      price: "\$9.99",
    ),

  ];
}
