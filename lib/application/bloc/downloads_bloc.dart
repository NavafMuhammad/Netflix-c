import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix/domain/core/main_failure.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';
import 'package:netflix/domain/downloads/models/downloads_model.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo downloadsRepo;
  DownloadsBloc(this.downloadsRepo) : super(DownloadsState.initial()) {
    on<_GetDownloadsImages>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        downloadsFailureorSuccessOption: none(),
      ));
      final Either<MainFailure, List<DownloadsModel>> downloadsOption =
          await downloadsRepo.getDownloadsImages();

      emit(downloadsOption.fold(
        (f) => state.copyWith(
          isLoading: false,
          downloadsFailureorSuccessOption: Some(Left(f))
        ),
        (s) => state.copyWith(
          isLoading: false,
          downloads: s,
          downloadsFailureorSuccessOption: Some(Right(s)),
        ),
      ));
    });
  }
}
