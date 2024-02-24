import 'dart:convert';

class DetailStroyResponseModel {
  final bool error;
  final String message;
  final Story story;

  DetailStroyResponseModel({
    required this.error,
    required this.message,
    required this.story,
  });

  factory DetailStroyResponseModel.fromJson(String str) =>
      DetailStroyResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DetailStroyResponseModel.fromMap(Map<String, dynamic> json) =>
      DetailStroyResponseModel(
        error: json["error"],
        message: json["message"],
        story: Story.fromMap(json["story"]),
      );

  Map<String, dynamic> toMap() => {
        "error": error,
        "message": message,
        "story": story.toMap(),
      };
}

class Story {
  final String id;
  final String name;
  final String description;
  final String photoUrl;
  final DateTime createdAt;
  final dynamic lat;
  final dynamic lon;

  Story({
    required this.id,
    required this.name,
    required this.description,
    required this.photoUrl,
    required this.createdAt,
    required this.lat,
    required this.lon,
  });

  factory Story.fromJson(String str) => Story.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Story.fromMap(Map<String, dynamic> json) => Story(
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
