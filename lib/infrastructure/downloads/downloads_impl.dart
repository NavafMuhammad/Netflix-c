import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/api_end_points.dart';
import 'package:netflix/domain/core/main_failure/main_failure.dart';
import 'package:netflix/domain/downloads/downloads_service.dart';
import 'package:netflix/domain/downloads/models/downloads_model.dart';

@LazySingleton(as: DownloadsService)
class DownloadsImpl implements DownloadsService {
  @override
  Future<Either<MainFailure, List<DownloadsModel>>> getDownloadsImages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloadsUrl);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadsList = (response.data['results'] as List)
            .map((e) => DownloadsModel.fromJson(e))
            .toList();

        return Right(downloadsList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
