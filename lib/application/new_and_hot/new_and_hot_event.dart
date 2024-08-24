part of 'new_and_hot_bloc.dart';

@freezed
class NewAndHotEvent with _$NewAndHotEvent {
  factory NewAndHotEvent.getNewAndHotMovieData() = GetNewAndHotMovieData;
  factory NewAndHotEvent.getNewAndHotTvData() = GetNewAndHotTvData;
}
