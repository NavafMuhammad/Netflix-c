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
      id: (json['id'] as num?)?.toInt(),
      backdropPath: json['backdrop_path'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$SearchResultDataToJson(SearchResultData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'backdrop_path': instance.backdropPath,
      'title': instance.title,
    };
