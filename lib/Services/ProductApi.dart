// ignore_for_file: file_names

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zad/Models/ProductModel.dart';

class ApiService {
  static SharedPreferences? prefs;
  static const String baseUrl =
      'https://localhost:7268/api/Products'; // غيّر العنوان حسب API بتاعك

  static Future<List<Product>> fetchProducts() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    if (kDebugMode) {
      print(token);
    }
    if (token == null) {
      throw Exception('Token not found');
    }
    final response = await http.get(Uri.parse(baseUrl), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': "Bearer $token",
    });
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((item) => Product.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
