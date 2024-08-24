part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required bool isLoading,
    required bool isError,
    required List<DownloadsModel> getTrendingMovies,
    required List<DownloadsModel> getUpComingMovies,
    required List<DownloadsModel> getPopularMovies,
    required List<DownloadsModel> getDiscoverMovies,
    required List<DownloadsModel> getDiscoverTv,
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
