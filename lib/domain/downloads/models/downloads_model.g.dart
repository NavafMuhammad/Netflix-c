// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downloads_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DownloadsModel _$DownloadsModelFromJson(Map<String, dynamic> json) =>
    DownloadsModel(
      posterPath: json['poster_path'] as String?,
      title: json['title'] as String?,
      backdropPath: json['backdrop_path'] as String?,
    );

Map<String, dynamic> _$DownloadsModelToJson(DownloadsModel instance) =>
    <String, dynamic>{
      'poster_path': instance.posterPath,
      'title': instance.title,
      'backdrop_path': instance.backdropPath,
    };
