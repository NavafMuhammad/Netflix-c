part of 'new_and_hot_bloc.dart';

@freezed
class NewAndHotState with _$NewAndHotState {
  factory NewAndHotState({
    required bool isLoading,
    required bool isError,
    required List<NewAndHotMovieData> movieList,
    required List<NewAndHotMovieData> tvList,
  }) = _NewAndHotState;

  factory NewAndHotState.initial() {
    return NewAndHotState(
        isLoading: false, isError: false, movieList: [], tvList: []);
  }
}
