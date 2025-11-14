import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "https://sua-api-aqui.com"; // coloque sua URL

  static Future<bool> login(String email, String senha) async {
    final url = Uri.parse('$baseUrl/login'); // endpoint de login
    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "email": email,
        "senha": senha,
      }),
    );

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}

