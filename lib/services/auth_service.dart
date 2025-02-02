import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  final String baseUrl = "https://raion-battlepass.elginbrian.com";

  Future<http.Response> register(String username, String email, String password,
      String confirmpassword) async {
    final response = await http.post(
      Uri.parse("$baseUrl/api/auth/register"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "username": username,
        "email": email,
        "password": password,
        "password_confirmation": confirmpassword,
      }),
    );
    return response;
  }
}
