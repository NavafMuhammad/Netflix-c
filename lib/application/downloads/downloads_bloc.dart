import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/main_failure/main_failure.dart';
import 'package:netflix/domain/downloads/downloads_service.dart';
import 'package:netflix/domain/downloads/models/downloads_model.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final DownloadsService downloadsRepo;
  DownloadsBloc(this.downloadsRepo) : super(DownloadsState.initial()) {
    on<_GetDownloadsImages>((event, emit) async {
      if (state.downloads.isNotEmpty) {
        emit(state.copyWith(
          isLoading: false,
          downloads: state.downloads,
          downloadsFailureorSuccessOption: none(),
        ));
        return;
      }

      final Either<MainFailure, List<DownloadsModel>> downloadsOption =
          await downloadsRepo.getDownloadsImages();

      final _state = downloadsOption.fold(
        (MainFailure f) => DownloadsState(
            downloads: [],
            isLoading: false,
            downloadsFailureorSuccessOption: Some(Left(f))),
        (List<DownloadsModel> list) => DownloadsState(
          isLoading: false,
          downloads: list,
          downloadsFailureorSuccessOption: Some(Right(list)),
        ),
      );
      emit(_state);
    });
  }
}
