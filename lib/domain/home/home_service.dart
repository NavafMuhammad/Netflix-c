import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/main_failure/main_failure.dart';
import 'package:netflix/domain/downloads/models/downloads_model.dart';

abstract class HomeService {
  Future<Either<MainFailure, List<DownloadsModel>>> getPopularMovieData();
  Future<Either<MainFailure, List<DownloadsModel>>> getDiscoverMovieData();
}
