import 'package:json_annotation/json_annotation.dart';

part 'home_model.g.dart';

@JsonSerializable()
class HomeModel {
  @JsonKey(name: "results")
  List<HomeResultData> results;

  HomeModel({this.results = const []});

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return _$HomeModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeModelToJson(this);
}

@JsonSerializable()
class HomeResultData {
  @JsonKey(name: 'poster_path')
  String? posterPath;

  HomeResultData({this.posterPath});

  factory HomeResultData.fromJson(Map<String, dynamic> json) {
    return _$HomeResultDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeResultDataToJson(this);
}
