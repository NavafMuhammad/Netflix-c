import 'package:netflix/core/strings.dart';
import 'package:netflix/infrastructure/api_key.dart';

class ApiEndPoints {
  static const trendingMovieUrl =
      "$kBaseUrl/trending/movie/day?api_key=$apiKey";
  static const searchMovieUrl =
      "$kBaseUrl/search/movie?query=spiderman&api_key=$apiKey";
  static const upComingMovieUrl = "$kBaseUrl/movie/upcoming?api_key=$apiKey";
  static const discoverTvUrl = "$kBaseUrl/discover/tv?api_key=$apiKey";
  static const discoverMovieUrl = "$kBaseUrl/discover/movie?api_key=$apiKey";
  static const popularMovieUrl = "$kBaseUrl/movie/popular?api_key=$apiKey";
}
