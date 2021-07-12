import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:swiper_with_details/services/json_details/datum.dart';

Future<List<Datum>> fetchData() async {
  http.Response response = await http.get(Uri.parse(
      'https://kitsu.io/api/edge/anime?page%5Blimit%5D=10&page%5Boffset%5D=0'));

  if (response.statusCode == 200) {
    Map seriesData = json.decode(utf8.decode(response.bodyBytes));
    List<dynamic> series = seriesData["data"];
    return series.map((json) => Datum.fromJson(json)).toList();
  } else {
    throw Exception('Something gone wrong');
  }
}
