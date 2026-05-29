class CategoryModel {
  final String image;
  final String label;

  const CategoryModel({required this.image, required this.label});

  static const List<CategoryModel> categories = [
    CategoryModel(
      image: "assets/images/fruits_cat.png",
      label: "Fruits",
    ),
    CategoryModel(
      image: "assets/images/milk_cat.png",
      label: "Milk & egg",
    ),
    CategoryModel(
      image: "assets/images/beverages_cat.png",
      label: "Beverages",
    ),
    CategoryModel(
      image: "assets/images/laundry_cat.png",
      label: "Laundry",
    ),
    CategoryModel(
      image: "assets/images/vegetables_cat.png",
      label: "Vegetables",
    ),
  ];
}
