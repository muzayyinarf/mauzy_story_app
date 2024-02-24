import 'dart:convert';

class ListStoryResponseModel {
  final bool error;
  final String message;
  final List<ListStory> listStory;

  ListStoryResponseModel({
    required this.error,
    required this.message,
    required this.listStory,
  });

  factory ListStoryResponseModel.fromJson(String str) =>
      ListStoryResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ListStoryResponseModel.fromMap(Map<String, dynamic> json) =>
      ListStoryResponseModel(
        error: json["error"],
        message: json["message"],
        listStory: List<ListStory>.from(
            json["listStory"].map((x) => ListStory.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "error": error,
        "message": message,
        "listStory": List<dynamic>.from(listStory.map((x) => x.toMap())),
      };
}

class ListStory {
  final String id;
  final String name;
  final String description;
  final String photoUrl;
  final DateTime createdAt;
  final dynamic lat;
  final dynamic lon;

  ListStory({
    required this.id,
    required this.name,
    required this.description,
    required this.photoUrl,
    required this.createdAt,
    required this.lat,
    required this.lon,
  });

  factory ListStory.fromJson(String str) => ListStory.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ListStory.fromMap(Map<String, dynamic> json) => ListStory(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        photoUrl: json["photoUrl"],
        createdAt: DateTime.parse(json["createdAt"]),
        lat: json["lat"],
        lon: json["lon"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "photoUrl": photoUrl,
        "createdAt": createdAt.toIso8601String(),
        "lat": lat,
        "lon": lon,
      };
}
