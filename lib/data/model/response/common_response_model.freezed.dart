// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommonResponseModel _$CommonResponseModelFromJson(Map<String, dynamic> json) {
  return _CommonResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CommonResponseModel {
  bool get error => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonResponseModelCopyWith<CommonResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonResponseModelCopyWith<$Res> {
  factory $CommonResponseModelCopyWith(
          CommonResponseModel value, $Res Function(CommonResponseModel) then) =
      _$CommonResponseModelCopyWithImpl<$Res, CommonResponseModel>;
  @useResult
  $Res call({bool error, String message});
}

/// @nodoc
class _$CommonResponseModelCopyWithImpl<$Res, $Val extends CommonResponseModel>
    implements $CommonResponseModelCopyWith<$Res> {
  _$CommonResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommonResponseModelImplCopyWith<$Res>
    implements $CommonResponseModelCopyWith<$Res> {
  factory _$$CommonResponseModelImplCopyWith(_$CommonResponseModelImpl value,
          $Res Function(_$CommonResponseModelImpl) then) =
      __$$CommonResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool error, String message});
}

/// @nodoc
class __$$CommonResponseModelImplCopyWithImpl<$Res>
    extends _$CommonResponseModelCopyWithImpl<$Res, _$CommonResponseModelImpl>
    implements _$$CommonResponseModelImplCopyWith<$Res> {
  __$$CommonResponseModelImplCopyWithImpl(_$CommonResponseModelImpl _value,
      $Res Function(_$CommonResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
  }) {
    return _then(_$CommonResponseModelImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommonResponseModelImpl implements _CommonResponseModel {
  const _$CommonResponseModelImpl({required this.error, required this.message});

  factory _$CommonResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommonResponseModelImplFromJson(json);

  @override
  final bool error;
  @override
  final String message;

  @override
  String toString() {
    return 'CommonResponseModel(error: $error, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonResponseModelImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommonResponseModelImplCopyWith<_$CommonResponseModelImpl> get copyWith =>
      __$$CommonResponseModelImplCopyWithImpl<_$CommonResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommonResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CommonResponseModel implements CommonResponseModel {
  const factory _CommonResponseModel(
      {required final bool error,
      required final String message}) = _$CommonResponseModelImpl;

  factory _CommonResponseModel.fromJson(Map<String, dynamic> json) =
      _$CommonResponseModelImpl.fromJson;

  @override
  bool get error;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$CommonResponseModelImplCopyWith<_$CommonResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
