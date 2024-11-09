import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:breaking_bad_flutter/models/character.dart';

class ApiService {
  static const String _baseUrl = 'https://breakingbadapi.com/api/characters';

  // Fungsi untuk mendapatkan daftar karakter
  Future<List<Character>> fetchCharacters() async {
    final response = await http.get(Uri.parse(_baseUrl));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => Character.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load characters');
    }
  }
}
