import 'package:json_annotation/json_annotation.dart';

part 'search_model.g.dart';

@JsonSerializable()
class SearchModel {
  @JsonKey(name: "results")
  List<SearchResultData> results;

  SearchModel({this.results = const []});

  factory SearchModel.fromJson(Map<String, dynamic> json) {
    return _$SearchModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchModelToJson(this);
}

@JsonSerializable()
class SearchResultData {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'backdrop_path')
  String? backdropPath;

  @JsonKey(name: 'title')
  String? title;

  SearchResultData({this.id, this.backdropPath, this.title});

  factory SearchResultData.fromJson(Map<String, dynamic> json) {
    return _$SearchResultDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResultDataToJson(this);
}
