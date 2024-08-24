import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/api_end_points.dart';
import 'package:netflix/domain/core/main_failure/main_failure.dart';
import 'package:netflix/domain/downloads/models/downloads_model.dart';
import 'package:netflix/domain/home/home_service.dart';

@LazySingleton(as: HomeService)
class HomeImpl implements HomeService {
  @override
  Future<Either<MainFailure, List<DownloadsModel>>>
      getDiscoverMovieData() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.discoverMovieUrl);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final discoverMovieData = (response.data["results"] as List)
            .map((e) => DownloadsModel.fromJson(e))
            .toList();
        return Right(discoverMovieData);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<DownloadsModel>>>
      getPopularMovieData() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.popularMovieUrl);
      if (response.data == 200 || response.data == 201) {
        final popularMovieData = (response.data["results"] as List)
            .map((e) => DownloadsModel.fromJson(e))
            .toList();
        return Right(popularMovieData);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
