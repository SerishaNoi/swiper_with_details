import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:swiper_with_details/services/json_details/posterImage.dart';

class ImageServices {
  static Future<List<PosterImage>> fetchImage() async {
    http.Response response = await http.get(Uri.parse(
        'https://kitsu.io/api/edge/anime?page%5Blimit%5D=10&page%5Boffset%5D=0'));

    if (response.statusCode == 200) {
      Map imageData = jsonDecode(response.body);
      List<dynamic> images = imageData["data"];
      return images.map((json) => PosterImage.fromJson(json)).toList();
    } else {
      throw Exception('Something gone wrong');
    }
  }
}
