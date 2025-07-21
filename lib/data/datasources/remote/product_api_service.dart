import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../models/product_model.dart';

class ProductApiService {
  final String baseUrl = "https://fakestoreapi.com";

  Future<List<ProductModel>> fetchProducts() async {
    final response = await http.get(Uri.parse("$baseUrl/products"));

    if (response.statusCode == 200) {
      final List decoded = jsonDecode(response.body);
      return decoded.map((json) => ProductModel.fromJson(json)).toList();
    } else {
      throw Exception("Failed to load products");
    }
  }
}
