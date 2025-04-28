import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:zad/Models/TokenModel.dart';

class AuthService {
  static const String baseUrl =
      'https://localhost:7268/api/Auth'; // عدل الرابط ده

  static Future<LoginResponse?> login({
    required String username,
    required String password,
  }) async {
    try {
      final url = Uri.parse('$baseUrl/login');
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: jsonEncode({
          'username': username,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return LoginResponse.fromJson(data);
      } else {
        print('Response body: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Error during login: $e');
      return null;
    }
  }
}
