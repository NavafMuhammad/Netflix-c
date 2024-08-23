import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/downloads/downloads_service.dart';
import 'package:netflix/domain/downloads/models/downloads_model.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

final dummyVideoUrls = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
];

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  final DownloadsService _downloads;
  FastLaughBloc(this._downloads) : super(FastLaughState.initial()) {
    on<Initialize>((event, emit) async {
      //set initial state
      emit(
          const FastLaughState(isLoading: true, isError: false, movieList: []));

      //get trending movie data
      final moviedata = await _downloads.getDownloadsImages();
      final _state = moviedata.fold(
          (f) => const FastLaughState(
              isLoading: false, isError: true, movieList: []),
          (s) =>
              FastLaughState(isLoading: false, isError: false, movieList: s));

      //send to ui
      emit(_state);
    });
  }
}
