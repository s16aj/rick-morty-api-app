import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/character_model.dart';

Future<List<Character>> fetchCharacters() async {
  final url = Uri.parse('https://rickandmortyapi.com/api/character');

  final response = await http.get(url);

  if (response.statusCode == 200) {
    final body = jsonDecode(response.body);
    final results = body['results'] as List<dynamic>;

    return results.map((json) => Character.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load characters');
  }
}