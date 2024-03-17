// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommonResponseModelImpl _$$CommonResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CommonResponseModelImpl(
      error: json['error'] as bool,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$CommonResponseModelImplToJson(
        _$CommonResponseModelImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
    };
