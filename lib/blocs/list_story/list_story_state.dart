part of 'list_story_bloc.dart';

@freezed
class ListStoryState with _$ListStoryState {
  const factory ListStoryState.initial() = _Initial;
  const factory ListStoryState.loading() = _Loading;
  const factory ListStoryState.loaded(List<ListStory> stories) = _Loaded;
  const factory ListStoryState.error(String errorMessage) = _Error;
}
