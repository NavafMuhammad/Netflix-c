import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/main_failure/main_failure.dart';
import 'package:netflix/domain/home/models/home_model.dart';

abstract class HomeService {
  Future<Either<MainFailure, HomeModel>> getTrendingMovie();
  Future<Either<MainFailure, HomeModel>> getUpComingMovie();
  Future<Either<MainFailure, HomeModel>> getPopularMovie();
  Future<Either<MainFailure, HomeModel>> getDiscoverMovie();
  Future<Either<MainFailure, HomeModel>> getDiscoverTv();
}
