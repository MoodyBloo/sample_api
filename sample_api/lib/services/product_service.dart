import 'dart:convert';
import 'package:http/http.dart';

class ProductService {
  late List<dynamic> data;

  Future<void> fetchAllProducts() async {
    final response = await get(
      Uri.parse('https://freetestapi.com/api/v1/products')
    );

    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
      print(data);
    } else {
      throw Exception('Failed to load products');
    }
  }

  Future<void> searchProducts(String query) async {
    final response = await get(
      Uri.parse('https://freetestapi.com/api/v1/products?sort=name&order=dec')
    );

    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
      print(data);
    } else {
      throw Exception('Failed to load search results');
    }
  }
}
