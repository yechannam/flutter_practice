import 'dart:convert';

import 'package:http/http.dart';
import 'package:toonflix/model/model.dart';

class ApiService {
  static String baseURL = 'https://webtoon-crawler.nomadcoders.workers.dev';
  static String today = 'today';

  static Future<List<Webtoon>> getTodays() async {
    List<Webtoon> webtoonIns = [];
    final url = Uri.parse('$baseURL/$today');
    final response = await get(url);
    if (response.statusCode == 200) {
      final List<dynamic> webs = jsonDecode(response.body);
      for (var web in webs) {
        webtoonIns.add(Webtoon.fromJson(web));
      }
    } else {
      throw Error();
    }
    return webtoonIns;
  }
}
