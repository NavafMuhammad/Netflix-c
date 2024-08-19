import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/main_failure.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';
import 'package:netflix/domain/downloads/models/downloads_model.dart';

class DownloadsRepository implements IDownloadsRepo {
  @override
  Future<Either<MainFailure, List<DownloadsModel>>> getDownloadsImages() {
    
    throw UnimplementedError();
  }
}