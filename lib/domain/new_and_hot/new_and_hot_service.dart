import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/main_failure/main_failure.dart';
import 'package:netflix/domain/new_and_hot/models/new_and_hot.dart';

abstract class NewAndHotService {
  Future<Either<MainFailure, NewAndHotModel>> getNewAndHotMovieData();
  Future<Either<MainFailure, NewAndHotModel>> getNewAndHotTvData();
}