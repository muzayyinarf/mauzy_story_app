import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_story_response_model.freezed.dart';
part 'list_story_response_model.g.dart';

@freezed
class ListStoryResponseModel with _$ListStoryResponseModel {
  const factory ListStoryResponseModel({
    required bool error,
    required String message,
    required List<ListStory> listStory,
  }) = _ListStoryResponseModel;

  factory ListStoryResponseModel.fromJson(Map<String, dynamic> json) =>
      ListStoryResponseModel(
        error: json["error"],
        message: json["message"],
        listStory: List<ListStory>.from(
            json["listStory"].map((x) => ListStory.fromJson(x))),
      );
}

@freezed
class ListStory with _$ListStory {
  const factory ListStory({
    required String id,
    required String name,
    required String description,
    required String photoUrl,
    required DateTime createdAt,
    required dynamic lat,
    required dynamic lon,
  }) = _ListStory;

  factory ListStory.fromJson(Map<String, dynamic> json) => ListStory(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        photoUrl: json["photoUrl"],
        createdAt: DateTime.parse(json["createdAt"]),
        lat: json["lat"],
        lon: json["lon"],
      );
}
