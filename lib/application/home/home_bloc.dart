import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/home/home_service.dart';
import 'package:netflix/domain/home/models/home_model.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeService homeService;
  final initialHomeState = HomeState(
      isLoading: true,
      isError: false,
      getTrendingMovies: [],
      getUpComingMovies: [],
      getPopularMovies: [],
      getDiscoverMovies: [],
      getDiscoverTv: []);

  HomeBloc(this.homeService) : super(HomeState.initial()) {
    on<GetTrendingMovie>((event, emit) async {
      // set initial state
      // emit(initialHomeState);
      emit(HomeState(
          isLoading: true,
          isError: false,
          getTrendingMovies: [],
          getUpComingMovies: [],
          getPopularMovies: [],
          getDiscoverMovies: [],
          getDiscoverTv: []));

      // get movie data
      final trendingList = await homeService.getTrendingMovie();
      final updatedState = trendingList.fold(
          (f) => HomeState(
              isLoading: false,
              isError: true,
              getTrendingMovies: [],
              getUpComingMovies: [],
              getPopularMovies: [],
              getDiscoverMovies: [],
              getDiscoverTv: []),
          (s) => HomeState(
                isLoading: false,
                isError: false,
                getTrendingMovies: s.results,
                getUpComingMovies: [],
                getPopularMovies: [],
                getDiscoverMovies: [],
                getDiscoverTv: [],
              ));

      // send to ui
      emit(updatedState);
    });
    on<GetUpComingMovie>((event, emit) async {
      // set initial state
      emit(initialHomeState);

      // get movie data
      final upComingList = await homeService.getUpComingMovie();
      final updatedState = upComingList.fold(
          (f) => HomeState(
              isLoading: false,
              isError: true,
              getTrendingMovies: [],
              getUpComingMovies: [],
              getPopularMovies: [],
              getDiscoverMovies: [],
              getDiscoverTv: []),
          (s) => HomeState(
              isLoading: false,
              isError: false,
              getTrendingMovies: state.getTrendingMovies,
              getUpComingMovies: s.results,
              getPopularMovies: state.getPopularMovies,
              getDiscoverMovies: state.getDiscoverMovies,
              getDiscoverTv: state.getDiscoverTv));

      // send to ui
      emit(updatedState);
    });
    on<GetPopularMovie>((event, emit) async {
      // set initial state
      emit(initialHomeState);

      // get movie data
      final popularList = await homeService.getPopularMovie();
      final updatedState = popularList.fold(
          (f) => HomeState(
              isLoading: false,
              isError: true,
              getTrendingMovies: [],
              getUpComingMovies: [],
              getPopularMovies: [],
              getDiscoverMovies: [],
              getDiscoverTv: []),
          (s) => HomeState(
              isLoading: false,
              isError: false,
              getTrendingMovies: state.getTrendingMovies,
              getUpComingMovies: state.getUpComingMovies,
              getPopularMovies: s.results,
              getDiscoverMovies: state.getDiscoverMovies,
              getDiscoverTv: state.getDiscoverTv));

      // send to ui
      emit(updatedState);
    });
    on<GetDiscoverMovie>((event, emit) async {
      // set initial state
      emit(initialHomeState);

      // get movie data
      final discoverMovieList = await homeService.getDiscoverMovie();
      final updatedState = discoverMovieList.fold(
          (f) => HomeState(
              isLoading: false,
              isError: true,
              getTrendingMovies: [],
              getUpComingMovies: [],
              getPopularMovies: [],
              getDiscoverMovies: [],
              getDiscoverTv: []),
          (s) => HomeState(
                isLoading: false,
                isError: false,
                getTrendingMovies: state.getTrendingMovies,
                getUpComingMovies: state.getUpComingMovies,
                getPopularMovies: state.getPopularMovies,
                getDiscoverMovies: s.results,
                getDiscoverTv: state.getDiscoverTv,
              ));

      // send to ui
      emit(updatedState);
    });
    on<GetDiscoverTv>((event, emit) async {
      // set initial state
      emit(initialHomeState);

      // get movie data
      final dicoverTvList = await homeService.getDiscoverTv();
      final updatedState = dicoverTvList.fold(
          (f) => HomeState(
              isLoading: false,
              isError: true,
              getTrendingMovies: [],
              getUpComingMovies: [],
              getPopularMovies: [],
              getDiscoverMovies: [],
              getDiscoverTv: []),
          (s) => HomeState(
              isLoading: false,
              isError: false,
              getTrendingMovies: state.getTrendingMovies,
              getUpComingMovies: state.getUpComingMovies,
              getPopularMovies: state.getPopularMovies,
              getDiscoverMovies: state.getDiscoverMovies,
              getDiscoverTv: s.results));

      // send to ui
      emit(updatedState);
    });
  }
}
