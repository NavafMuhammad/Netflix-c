part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.initilize() = Initialize;
  const factory SearchEvent.searchMovies({
    required String movieQuery,
  }) = SearchMovies;
}
