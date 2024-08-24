import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/downloads/downloads_service.dart';
import 'package:netflix/domain/downloads/models/downloads_model.dart';
import 'package:netflix/domain/home/home_service.dart';
import 'package:netflix/domain/new_and_hot/new_and_hot_service.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final DownloadsService downloadsService;
  final NewAndHotService newAndHotService;
  final HomeService homeService;
  HomeBloc(this.downloadsService, this.newAndHotService, this.homeService)
      : super(HomeState.initial()) {
    on<GetTrendingMovie>((event, emit) async {
      // set initial state
      emit(HomeState(
          isLoading: true,
          isError: false,
          getTrendingMovies: [],
          getUpComingMovies: [],
          getPopularMovies: [],
          getDiscoverMovies: [],
          getDiscoverTv: []));

      // get movie data
      final trendingList = await downloadsService.getTrendingMovieData();
      final _state = trendingList.fold(
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
                getTrendingMovies: s,
                getUpComingMovies: state.getUpComingMovies,
                getPopularMovies: state.getPopularMovies,
                getDiscoverMovies: state.getDiscoverMovies,
                getDiscoverTv: state.getDiscoverTv,
              ));

      // send to ui
      emit(_state);
    });
    on<GetUpComingMovie>((event, emit) async {
      // set initial state

      // get movie data

      // send to ui
    });
    on<GetPopularMovie>((event, emit) async {
      // set initial state

      // get movie data

      // send to ui
    });
    on<GetDiscoverMovie>((event, emit) async {
      // set initial state
      emit(HomeState(
          isLoading: true,
          isError: false,
          getTrendingMovies: [],
          getUpComingMovies: [],
          getPopularMovies: [],
          getDiscoverMovies: [],
          getDiscoverTv: []));

      // get movie data
      final discoverMovieList = await homeService.getDiscoverMovieData();
    final _state =  discoverMovieList.fold(
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
                getDiscoverMovies: s,
                getDiscoverTv: state.getDiscoverTv,
              ));

      // send to ui
      emit(_state);
    });
    on<GetDiscoverTv>((event, emit) async {
      // set initial state

      // get movie data

      // send to ui
    });
  }
}
