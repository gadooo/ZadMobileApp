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
      throw ('Login failed: ${response.body}');
      return null; // Return null if the body is empty
    }
  }

  static Future<bool> register({
    required String username,
    required String email,
    required String password,
  }) async {
    final url = Uri.parse('$baseUrl/register');
    var errorMessage;
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: jsonEncode({
        'username': username,
        'email': email,
        'password': password,
        'role': 'User',
      }),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      // تم التسجيل بنجاح
      return true;
    } else {
      print('Register failed: ${response.body}');
      errorMessage = response.body.toString();
      throw (errorMessage);
      return false; // Return false if the registration failed
      // Return false if the body is empty
    }
  }
}
