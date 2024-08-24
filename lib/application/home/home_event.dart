part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getTrendingMovie() = GetTrendingMovie;
  const factory HomeEvent.getUpComingMovie() = GetUpComingMovie;
  const factory HomeEvent.getPopularMovie() = GetPopularMovie;
  const factory HomeEvent.getDiscoverMovie() = GetDiscoverMovie;
  const factory HomeEvent.getDiscoverTv() = GetDiscoverTv;
}