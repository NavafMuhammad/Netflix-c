import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/main_failure/main_failure.dart';
import 'package:netflix/domain/downloads/downloads_service.dart';
import 'package:netflix/domain/downloads/models/downloads_model.dart';
import 'package:netflix/domain/search/models/search_model/search_model.dart';
import 'package:netflix/domain/search/search_service.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final DownloadsService downloadsService;
  final SearchService searchService;

  SearchBloc(this.downloadsService, this.searchService)
      : super(SearchState.initial()) {
    //searchIdle
    on<Initialize>((event, emit) async {
      if (state.searchIdleList.isNotEmpty) {
        emit(SearchState(
          isLoading: false,
          isError: false,
          searchResultList: [],
          searchIdleList: state.searchIdleList,
        ));
        return;
      }

      //get trending movies
      final downloadslist = await downloadsService.getDownloadsImages();

      final _state = downloadslist.fold((MainFailure f) {
        return const SearchState(
            isLoading: false,
            isError: true,
            searchResultList: [],
            searchIdleList: []);
      }, (List<DownloadsModel> list) {
        return SearchState(
            isLoading: false,
            isError: false,
            searchResultList: [],
            searchIdleList: list);
      });

      //display to ui
      emit(_state);
    });

    //search
    on<SearchMovies>((event, emit) {
      //get movies according to search
      searchService.searchMovies(moviesQuery: event.movieQuery);
      //display to ui
    });
  }
}
