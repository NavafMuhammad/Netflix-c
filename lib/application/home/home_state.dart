part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required bool isLoading,
    required bool isError,
    required List<HomeResultData> getTrendingMovies,
    required List<HomeResultData> getUpComingMovies,
    required List<HomeResultData> getPopularMovies,
    required List<HomeResultData> getDiscoverMovies,
    required List<HomeResultData> getDiscoverTv,
  }) = _HomeState;

  factory HomeState.initial() {
    return HomeState(
        isLoading: false,
        isError: false,
        getTrendingMovies: [],
        getUpComingMovies: [],
        getPopularMovies: [],
        getDiscoverMovies: [],
        getDiscoverTv: []);
  }
}
