// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => HomeModel(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => HomeResultData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
      'results': instance.results,
    };

HomeResultData _$HomeResultDataFromJson(Map<String, dynamic> json) =>
    HomeResultData(
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$HomeResultDataToJson(HomeResultData instance) =>
    <String, dynamic>{
      'poster_path': instance.posterPath,
    };
