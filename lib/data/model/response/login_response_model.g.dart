// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseModelImpl _$$LoginResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginResponseModelImpl(
      error: json['error'] as bool,
      message: json['message'] as String,
      loginResult: LoginResultModel.fromJson(
          json['loginResult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginResponseModelImplToJson(
        _$LoginResponseModelImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'loginResult': instance.loginResult,
    };
