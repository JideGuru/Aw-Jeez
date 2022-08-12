import 'dart:convert';

import 'package:aw_geez/util/constants.dart';
import 'package:http/http.dart' as http;

class HomeRepository {
  Future<Map> getCharacters() async {
    var res = await http.get(Uri.parse(characterUrl));
    if (res.statusCode == 200) {
      return jsonDecode(res.body);
    } else {
      throw (jsonDecode(res.body));
    }
  }
}
