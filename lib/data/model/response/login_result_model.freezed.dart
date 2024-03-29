// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginResultModel _$LoginResultModelFromJson(Map<String, dynamic> json) {
  return _LoginResultModel.fromJson(json);
}

/// @nodoc
mixin _$LoginResultModel {
  String get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResultModelCopyWith<LoginResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResultModelCopyWith<$Res> {
  factory $LoginResultModelCopyWith(
          LoginResultModel value, $Res Function(LoginResultModel) then) =
      _$LoginResultModelCopyWithImpl<$Res, LoginResultModel>;
  @useResult
  $Res call({String userId, String name, String token});
}

/// @nodoc
class _$LoginResultModelCopyWithImpl<$Res, $Val extends LoginResultModel>
    implements $LoginResultModelCopyWith<$Res> {
  _$LoginResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginResultModelImplCopyWith<$Res>
    implements $LoginResultModelCopyWith<$Res> {
  factory _$$LoginResultModelImplCopyWith(_$LoginResultModelImpl value,
          $Res Function(_$LoginResultModelImpl) then) =
      __$$LoginResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String name, String token});
}

/// @nodoc
class __$$LoginResultModelImplCopyWithImpl<$Res>
    extends _$LoginResultModelCopyWithImpl<$Res, _$LoginResultModelImpl>
    implements _$$LoginResultModelImplCopyWith<$Res> {
  __$$LoginResultModelImplCopyWithImpl(_$LoginResultModelImpl _value,
      $Res Function(_$LoginResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = null,
    Object? token = null,
  }) {
    return _then(_$LoginResultModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResultModelImpl implements _LoginResultModel {
  const _$LoginResultModelImpl(
      {required this.userId, required this.name, required this.token});

  factory _$LoginResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResultModelImplFromJson(json);

  @override
  final String userId;
  @override
  final String name;
  @override
  final String token;

  @override
  String toString() {
    return 'LoginResultModel(userId: $userId, name: $name, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResultModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, name, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResultModelImplCopyWith<_$LoginResultModelImpl> get copyWith =>
      __$$LoginResultModelImplCopyWithImpl<_$LoginResultModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResultModelImplToJson(
      this,
    );
  }
}

abstract class _LoginResultModel implements LoginResultModel {
  const factory _LoginResultModel(
      {required final String userId,
      required final String name,
      required final String token}) = _$LoginResultModelImpl;

  factory _LoginResultModel.fromJson(Map<String, dynamic> json) =
      _$LoginResultModelImpl.fromJson;

  @override
  String get userId;
  @override
  String get name;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$LoginResultModelImplCopyWith<_$LoginResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
