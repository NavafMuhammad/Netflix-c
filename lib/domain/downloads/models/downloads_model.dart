import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloads_model.freezed.dart';
part 'downloads_model.g.dart';

@freezed
class DownloadsModel with _$DownloadsModel {
  const factory DownloadsModel({
    @JsonKey(name: "poster_path") required String? posterPath,

    @JsonKey(name: "title")
    required String? title,

    @JsonKey(name: "backdrop_path")
    required String? backdropPath,
  }) = _DownloadsModel;

  factory DownloadsModel.fromJson(Map<String, dynamic> json) =>
      _$DownloadsModelFromJson(json);
}
