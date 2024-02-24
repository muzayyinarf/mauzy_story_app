part of 'detail_story_bloc.dart';

@freezed
class DetailStoryState with _$DetailStoryState {
  const factory DetailStoryState.initial() = _Initial;
  const factory DetailStoryState.loading() = _Loading;
  const factory DetailStoryState.loaded(DetailStroyResponseModel model) =
      _Loaded;
  const factory DetailStoryState.error(String message) = _Error;
}
