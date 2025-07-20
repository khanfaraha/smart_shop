import 'package:flutter/material.dart';
import '../../../data/models/product_model.dart';

class CartProvider extends ChangeNotifier {
  final Map<int, int> _cartItems = {}; // productId → quantity
  final Map<int, ProductModel> _productMap = {}; // productId → product

  Map<int, int> get items => _cartItems;
  List<ProductModel> get products => _productMap.values.toList();

  void addToCart(ProductModel product) {
    if (_cartItems.containsKey(product.id)) {
      _cartItems[product.id] = _cartItems[product.id]! + 1;
    } else {
      _cartItems[product.id] = 1;
      _productMap[product.id] = product;
    }
    notifyListeners();
  }

  void removeFromCart(int productId) {
    _cartItems.remove(productId);
    _productMap.remove(productId);
    notifyListeners();
  }

  void updateQuantity(int productId, int quantity) {
    if (quantity <= 0) {
      removeFromCart(productId);
    } else {
      _cartItems[productId] = quantity;
    }
    notifyListeners();
  }

  int getQuantity(int productId) => _cartItems[productId] ?? 0;

  int get itemCount => _cartItems.values.fold(0, (sum, qty) => sum + qty);

  double get totalPrice {
    double total = 0.0;
    _cartItems.forEach((id, qty) {
      total += (_productMap[id]?.price ?? 0) * qty;
    });
    return total;
  }

  void clearCart() {
    _cartItems.clear();
    _productMap.clear();
    notifyListeners();
  }
}
