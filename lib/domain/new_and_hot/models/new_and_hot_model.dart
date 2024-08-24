import 'package:json_annotation/json_annotation.dart';

part 'new_and_hot_model.g.dart';

@JsonSerializable()
class NewAndHotModel {
  @JsonKey(name: "page")
  int? page;

  @JsonKey(name: "results")
  List<NewAndHotMovieData> results;

  NewAndHotModel({this.page, this.results = const []});

  factory NewAndHotModel.fromJson(Map<String, dynamic> json) {
    return _$NewAndHotModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NewAndHotModelToJson(this);
}

@JsonSerializable()
class NewAndHotMovieData {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;

  @JsonKey(name: "id")
  int? id;

  @JsonKey(name: 'original_language')
  String? originalLanguage;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: "overview")
  String? overview;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  @JsonKey(name: 'release_date')
  String? releaseDate;

  @JsonKey(name: "title")
  String? title;

  NewAndHotMovieData({
    this.backdropPath,
    this.id,
    this.originalLanguage,
    this.name,
    this.overview,
    this.posterPath,
    this.releaseDate,
    this.title,
  });

  factory NewAndHotMovieData.fromJson(Map<String, dynamic> json) {
    return _$NewAndHotMovieDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NewAndHotMovieDataToJson(this);
}
