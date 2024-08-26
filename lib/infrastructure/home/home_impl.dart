import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/api_end_points.dart';
import 'package:netflix/domain/core/main_failure/main_failure.dart';
import 'package:netflix/domain/home/home_service.dart';
import 'package:netflix/domain/home/models/home_model.dart';

@LazySingleton(as: HomeService)
class HomeImpl implements HomeService {
  @override
  Future<Either<MainFailure,HomeModel>>
      getDiscoverMovie() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.discoverMovieUrl);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final discoverMovieData = HomeModel.fromJson(response.data);
        // (response.data["results"] as List)
        //     .map((e) => HomeModel.fromJson(e))
        //     .toList();
        return Right(discoverMovieData);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, HomeModel>>
      getPopularMovie() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.popularMovieUrl);
      if (response.data == 200 || response.data == 201) {
        final popularMovieData = HomeModel.fromJson(response.data);
        // (response.data["results"] as List)
        //     .map((e) => HomeModel.fromJson(e))
        //     .toList();
        return Right(popularMovieData);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
  
  @override
  Future<Either<MainFailure, HomeModel>> getDiscoverTv() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.discoverTvUrl);
      if (response.data == 200 || response.data == 201) {
        final discoverTvData = HomeModel.fromJson(response.data);
        // (response.data["results"] as List)
        //     .map((e) => HomeModel.fromJson(e))
        //     .toList();
        return Right(discoverTvData);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
  
  @override
  Future<Either<MainFailure, HomeModel>> getTrendingMovie() async {
    
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.trendingMovieUrl);
      if (response.data == 200 || response.data == 201) {
        log(response.data);
        final trendingMovieData = 
        HomeModel.fromJson(response.data);
        // (response.data["results"] as List)
        //     .map((e) => HomeModel.fromJson(e))
        //     .toList();
        log(trendingMovieData.toString());
        return Right(trendingMovieData);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
  
  @override
  Future<Either<MainFailure, HomeModel>> getUpComingMovie() async{
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.upComingMovieUrl);
      if (response.data == 200 || response.data == 201) {
        final upComingMovieData = HomeModel.fromJson(response.data);
        // (response.data["results"] as List)
        //     .map((e) => HomeModel.fromJson(e))
        //     .toList();
        return Right(upComingMovieData);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
