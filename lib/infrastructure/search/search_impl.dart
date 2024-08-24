import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/api_end_points.dart';
import 'package:netflix/domain/core/main_failure/main_failure.dart';
import 'package:netflix/domain/search/models/search_model/search_model.dart';
import 'package:netflix/domain/search/search_service.dart';

@LazySingleton(as: SearchService)
class SearchImpl implements SearchService {
  @override
  Future<Either<MainFailure, SearchModel>> searchMovies(
      {required String moviesQuery}) async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.searchMovieUrl,
        queryParameters: {
          'query': moviesQuery,
        },
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final searchList = SearchModel.fromJson(response.data);

        log(searchList.toString());
        return Right(searchList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
