// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchModel _$SearchModelFromJson(Map<String, dynamic> json) => SearchModel(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => SearchResultData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SearchModelToJson(SearchModel instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

SearchResultData _$SearchResultDataFromJson(Map<String, dynamic> json) =>
    SearchResultData(
      backdropPath: json['backdrop_path'] as String?,
      title: json['title'] as String?,
    )..posterPath = json['poster_path'] as String?;

Map<String, dynamic> _$SearchResultDataToJson(SearchResultData instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'title': instance.title,
    };
