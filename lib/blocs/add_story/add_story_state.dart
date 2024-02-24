part of 'add_story_bloc.dart';

@freezed
class AddStoryState with _$AddStoryState {
  const factory AddStoryState({
    String? imagePath,
    XFile? imageFile,
  }) = _AddStoryState;

  factory AddStoryState.initial() => const _AddStoryState();
}
