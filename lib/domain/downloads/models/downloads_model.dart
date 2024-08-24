import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloads_model.g.dart';

@JsonSerializable()
class DownloadsModel {
  @JsonKey(name: "poster_path")
  final String? posterPath;

  @JsonKey(name: "title")
  final String? title;

  @JsonKey(name: "backdrop_path")
  final String? backdropPath;

  DownloadsModel({
    this.posterPath,
    this.title,
    this.backdropPath,
  });

  factory DownloadsModel.fromJson(Map<String, dynamic> json) =>
      _$DownloadsModelFromJson(json);
}
