import 'package:netflix/core/strings.dart';
import 'package:netflix/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloadsUrl = "$kBaseUrl/trending/movie/day?api_key=$apiKey";
  static const searchUrl = "$kBaseUrl/search/movie?query=spiderman&api_key=$apiKey";
}
