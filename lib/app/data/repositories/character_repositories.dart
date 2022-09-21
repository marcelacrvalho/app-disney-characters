import 'dart:convert';
import 'package:disney/app/data/models/character.dart';
import 'package:disney/app/data/server/app_server.dart';
import 'package:http/http.dart' as http;

class CharacterRepository {
  static Future<List<Character>?> fetch() async {
    try {
      var response = await http.get(AppServer.url);
      var responseDecode = json.decode(response.body);
      var responseData = responseDecode['data'];
      final characters =
      responseData.map<Character>((e) => Character.fromJson(e)).toList();
      return characters;
    } catch (error) {
      return null;
    }
  }
}
