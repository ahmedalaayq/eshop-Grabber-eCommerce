import 'package:flutter/material.dart';

import '../models/product_model.dart';

class HomeController with ChangeNotifier {
  String? selectedCat;
  List<ProductModel> basketList = [];

  void addToBasket(ProductModel product) {
    final bool exists = basketList.contains(product);
    if (!exists) {
      basketList.add(product);
    } else {
      basketList.remove(product);
    }
    notifyListeners();
  }

  bool isProductSelected(ProductModel product) => basketList.contains(product);
}
