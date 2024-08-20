import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/main_failure/main_failure.dart';
import 'package:netflix/domain/search/models/search_model/search_model.dart';


abstract class SearchService {
  Future<Either<MainFailure, SearchModel>> searchMovies(
      {required String moviesQuery});
}
