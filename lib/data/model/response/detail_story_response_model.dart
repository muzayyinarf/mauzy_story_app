import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_story_response_model.freezed.dart';
part 'detail_story_response_model.g.dart';

@freezed
class DetailStoryResponseModel with _$DetailStoryResponseModel {
  const factory DetailStoryResponseModel({
    required bool error,
    required String message,
    required Story story,
  }) = _DetailStoryResponseModel;

  factory DetailStoryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DetailStoryResponseModelFromJson(json);
}

@freezed
class Story with _$Story {
  const factory Story({
    required String id,
    required String name,
    required String description,
    required String photoUrl,
    required DateTime createdAt,
    required dynamic lat,
    required dynamic lon,
  }) = _Story;

  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);
}
