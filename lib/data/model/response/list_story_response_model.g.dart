// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_story_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListStoryResponseModelImpl _$$ListStoryResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ListStoryResponseModelImpl(
      error: json['error'] as bool,
      message: json['message'] as String,
      listStory: (json['listStory'] as List<dynamic>)
          .map((e) => ListStory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ListStoryResponseModelImplToJson(
        _$ListStoryResponseModelImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'listStory': instance.listStory,
    };

_$ListStoryImpl _$$ListStoryImplFromJson(Map<String, dynamic> json) =>
    _$ListStoryImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      photoUrl: json['photoUrl'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      lat: json['lat'],
      lon: json['lon'],
    );

Map<String, dynamic> _$$ListStoryImplToJson(_$ListStoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'photoUrl': instance.photoUrl,
      'createdAt': instance.createdAt.toIso8601String(),
      'lat': instance.lat,
      'lon': instance.lon,
    };
