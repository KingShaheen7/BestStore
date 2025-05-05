import 'dart:convert';  // Import 'json' for decoding the response
import 'package:http/http.dart' as http;  // Use 'as' to avoid naming conflicts
import 'package:best_store/model.dart';  // Import the User model

class APIhandler {
  final String baseUri = "https://localhost:7275/api/UsersAPI";

  Future<List<User>> getUserData() async {
    List<User> data = [];
    final uri = Uri.parse(baseUri);  // Use 'Uri.parse' with uppercase U
    try {
      final response = await http.get(
        uri,
        headers: <String, String>{
          'content-type': 'application/json; charset=UTF-8'
        },
      );
      if (response.statusCode >= 200 && response.statusCode <= 299) {
        final List<dynamic> jsonData = json.decode(response.body);  // Decode JSON
        data = jsonData.map((json) => User.fromJson(json)).toList();  // Parse JSON to User
      }
    } catch (e) {
      print('Error fetching data: $e');
      return data;
    }
    return data;
  }
}
