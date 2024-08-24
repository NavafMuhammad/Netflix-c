part of 'fast_laugh_bloc.dart';

@freezed
class FastLaughState with _$FastLaughState {
  const factory FastLaughState({
    required bool isLoading,
    required bool isError,
    required List<DownloadsModel> movieList,
  }) = _FastLaughState;

  factory FastLaughState.initial() {
    return const FastLaughState(
        isLoading: false, isError: false, movieList: []);
  }
}
