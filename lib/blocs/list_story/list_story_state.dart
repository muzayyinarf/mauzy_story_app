part of 'list_story_bloc.dart';

@freezed
class ListStoryState with _$ListStoryState {
  const factory ListStoryState.initial() = _Initial;
  const factory ListStoryState.loading() = _Loading;
  const factory ListStoryState.loaded(ListStoryResponseModel data) = _Loaded;
  const factory ListStoryState.error(String message) = _Error;
}
