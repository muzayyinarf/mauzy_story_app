// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResultModelImpl _$$LoginResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginResultModelImpl(
      userId: json['userId'] as String,
      name: json['name'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$$LoginResultModelImplToJson(
        _$LoginResultModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'name': instance.name,
      'token': instance.token,
    };
