import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/api_end_points.dart';
import 'package:netflix/domain/core/main_failure/main_failure.dart';
import 'package:netflix/domain/new_and_hot/models/new_and_hot.dart';
import 'package:netflix/domain/new_and_hot/new_and_hot_service.dart';

@LazySingleton(as: NewAndHotService)
class NewAndHotImpl implements NewAndHotService {
  @override
  Future<Either<MainFailure, NewAndHotModel>> getNewAndHotMovieData() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.newAndHotMovieUrl);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final movieList = NewAndHotModel.fromJson(response.data);
        return Right(movieList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, NewAndHotModel>> getNewAndHotTvData() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.newAndHotTvUrl);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final tvList = NewAndHotModel.fromJson(response.data);
        return Right(tvList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
