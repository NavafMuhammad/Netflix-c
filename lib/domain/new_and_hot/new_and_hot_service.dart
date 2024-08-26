import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/main_failure/main_failure.dart';
import 'package:netflix/domain/new_and_hot/models/new_and_hot_model.dart';

abstract class NewAndHotService {
  Future<Either<MainFailure, NewAndHotModel>> getUpComingMovieData();
  Future<Either<MainFailure, NewAndHotModel>> getDiscoverTvData();
}
