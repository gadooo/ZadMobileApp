import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zad/Models/CategoryModel.dart';

class ApiServiceCategory {
  static const String baseUrl = 'https://localhost:7268/api/Categories';

  static Future<List<Category>> fetchCategories() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token') ?? '';

    final response = await http.get(
      Uri.parse(baseUrl),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );
    // print(token);

    if (response.statusCode == 200) {
      List<dynamic> jsonData = json.decode(response.body);
      var data = jsonData.map((json) => Category.fromJson(json)).toList();

      return data;
    } else {
      throw Exception('فشل في تحميل البيانات: ${response.statusCode}');
    }
  }
}
