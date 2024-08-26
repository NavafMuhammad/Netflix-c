import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/new_and_hot/models/new_and_hot_model.dart';
import 'package:netflix/domain/new_and_hot/new_and_hot_service.dart';

part 'new_and_hot_event.dart';
part 'new_and_hot_state.dart';
part 'new_and_hot_bloc.freezed.dart';

@injectable
class NewAndHotBloc extends Bloc<NewAndHotEvent, NewAndHotState> {
  final NewAndHotService newAndHotService;
  NewAndHotBloc(this.newAndHotService) : super(NewAndHotState.initial()) {
    on<GetNewAndHotMovieData>((event, emit) async {
      //set initial state
      emit(NewAndHotState(
          isLoading: true, isError: false, movieList: [], tvList: []));

      //get movie data
      final movieList = await newAndHotService.getUpComingMovieData();
      final updatedState = movieList.fold(
          (f) => NewAndHotState(
              isLoading: false, isError: true, movieList: [], tvList: []),
          (s) => NewAndHotState(
              isLoading: false,
              isError: false,
              movieList: s.results,
              tvList: state.tvList));

      //send to ui
      emit(updatedState);
    });
    on<GetNewAndHotTvData>((event, emit) async {
      //set initial state
      emit(NewAndHotState(
          isLoading: true, isError: false, movieList: [], tvList: []));

      //get movie data
      final tvList = await newAndHotService.getDiscoverTvData();
      final updatedState = tvList.fold(
          (f) => NewAndHotState(
              isLoading: false, isError: true, movieList: [], tvList: []),
          (s) => NewAndHotState(
              isLoading: false,
              isError: false,
              movieList: state.movieList,
              tvList: s.results));

      //send to ui
      emit(updatedState);
    });
  }
}
