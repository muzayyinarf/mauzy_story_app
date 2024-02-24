part of 'add_story_bloc.dart';

@freezed
class AddStoryEvent with _$AddStoryEvent {
  const factory AddStoryEvent.setImage(String? imagePath, XFile? imageFile) =
      _SetImage;
  const factory AddStoryEvent.clearImage() = _ClearImage;
}
