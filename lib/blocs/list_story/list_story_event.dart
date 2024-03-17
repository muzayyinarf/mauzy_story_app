part of 'list_story_bloc.dart';

@freezed
class ListStoryEvent with _$ListStoryEvent {
  const factory ListStoryEvent.getAllStories(int? pageItems) = _GetAllStories;
}
