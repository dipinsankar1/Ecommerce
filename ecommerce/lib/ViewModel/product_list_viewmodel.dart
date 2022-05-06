import 'package:ecommerce/Model/productmodel.dart';
import 'package:ecommerce/ViewModel/product_viewmodel.dart';
import 'package:ecommerce/WebService/apimanager.dart';
import 'package:flutter/material.dart';

class ProductListViewModel extends ChangeNotifier {
  List<ProductViewModel> products = [];

  Future<void> fetchEvents() async {
    final results = await ApiModel().fetchProducts();
    products = results.map((item) => ProductViewModel(product: item)).toList();
    notifyListeners();
  }
}
