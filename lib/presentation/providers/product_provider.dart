import 'package:flutter/material.dart';
import '../../../data/datasources/remote/product_api_service.dart';
import '../../../data/models/product_model.dart';

class ProductProvider extends ChangeNotifier {
  final ProductApiService _apiService = ProductApiService();
  List<ProductModel> _products = [];
  bool _isLoading = false;

  List<ProductModel> get products => _products;
  bool get isLoading => _isLoading;

  Future<void> loadProducts() async {
    _isLoading = true;
    notifyListeners();

    try {
      _products = await _apiService.fetchProducts();
    } catch (e) {
      debugPrint("Product load error: $e");
    }

    _isLoading = false;
    notifyListeners();
  }
}
