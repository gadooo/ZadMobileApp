import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:zad/Models/ProductModel.dart';

class ApiService {
  static const String baseUrl =
      'https://localhost:7268/api/Products'; // غيّر العنوان حسب API بتاعك

  static Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((item) => Product.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
