// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddLocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? lat, double? lon, String? address)
        setLocation,
    required TResult Function() clearLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? lat, double? lon, String? address)? setLocation,
    TResult? Function()? clearLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? lat, double? lon, String? address)? setLocation,
    TResult Function()? clearLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetLocation value) setLocation,
    required TResult Function(_ClearLocation value) clearLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetLocation value)? setLocation,
    TResult? Function(_ClearLocation value)? clearLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLocation value)? setLocation,
    TResult Function(_ClearLocation value)? clearLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddLocationEventCopyWith<$Res> {
  factory $AddLocationEventCopyWith(
          AddLocationEvent value, $Res Function(AddLocationEvent) then) =
      _$AddLocationEventCopyWithImpl<$Res, AddLocationEvent>;
}

/// @nodoc
class _$AddLocationEventCopyWithImpl<$Res, $Val extends AddLocationEvent>
    implements $AddLocationEventCopyWith<$Res> {
  _$AddLocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SetLocationImplCopyWith<$Res> {
  factory _$$SetLocationImplCopyWith(
          _$SetLocationImpl value, $Res Function(_$SetLocationImpl) then) =
      __$$SetLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double? lat, double? lon, String? address});
}

/// @nodoc
class __$$SetLocationImplCopyWithImpl<$Res>
    extends _$AddLocationEventCopyWithImpl<$Res, _$SetLocationImpl>
    implements _$$SetLocationImplCopyWith<$Res> {
  __$$SetLocationImplCopyWithImpl(
      _$SetLocationImpl _value, $Res Function(_$SetLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? address = freezed,
  }) {
    return _then(_$SetLocationImpl(
      freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SetLocationImpl implements _SetLocation {
  const _$SetLocationImpl(this.lat, this.lon, this.address);

  @override
  final double? lat;
  @override
  final double? lon;
  @override
  final String? address;

  @override
  String toString() {
    return 'AddLocationEvent.setLocation(lat: $lat, lon: $lon, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetLocationImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lon, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetLocationImplCopyWith<_$SetLocationImpl> get copyWith =>
      __$$SetLocationImplCopyWithImpl<_$SetLocationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? lat, double? lon, String? address)
        setLocation,
    required TResult Function() clearLocation,
  }) {
    return setLocation(lat, lon, address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? lat, double? lon, String? address)? setLocation,
    TResult? Function()? clearLocation,
  }) {
    return setLocation?.call(lat, lon, address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? lat, double? lon, String? address)? setLocation,
    TResult Function()? clearLocation,
    required TResult orElse(),
  }) {
    if (setLocation != null) {
      return setLocation(lat, lon, address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetLocation value) setLocation,
    required TResult Function(_ClearLocation value) clearLocation,
  }) {
    return setLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetLocation value)? setLocation,
    TResult? Function(_ClearLocation value)? clearLocation,
  }) {
    return setLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLocation value)? setLocation,
    TResult Function(_ClearLocation value)? clearLocation,
    required TResult orElse(),
  }) {
    if (setLocation != null) {
      return setLocation(this);
    }
    return orElse();
  }
}

abstract class _SetLocation implements AddLocationEvent {
  const factory _SetLocation(
          final double? lat, final double? lon, final String? address) =
      _$SetLocationImpl;

  double? get lat;
  double? get lon;
  String? get address;
  @JsonKey(ignore: true)
  _$$SetLocationImplCopyWith<_$SetLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearLocationImplCopyWith<$Res> {
  factory _$$ClearLocationImplCopyWith(
          _$ClearLocationImpl value, $Res Function(_$ClearLocationImpl) then) =
      __$$ClearLocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearLocationImplCopyWithImpl<$Res>
    extends _$AddLocationEventCopyWithImpl<$Res, _$ClearLocationImpl>
    implements _$$ClearLocationImplCopyWith<$Res> {
  __$$ClearLocationImplCopyWithImpl(
      _$ClearLocationImpl _value, $Res Function(_$ClearLocationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearLocationImpl implements _ClearLocation {
  const _$ClearLocationImpl();

  @override
  String toString() {
    return 'AddLocationEvent.clearLocation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearLocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? lat, double? lon, String? address)
        setLocation,
    required TResult Function() clearLocation,
  }) {
    return clearLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? lat, double? lon, String? address)? setLocation,
    TResult? Function()? clearLocation,
  }) {
    return clearLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? lat, double? lon, String? address)? setLocation,
    TResult Function()? clearLocation,
    required TResult orElse(),
  }) {
    if (clearLocation != null) {
      return clearLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetLocation value) setLocation,
    required TResult Function(_ClearLocation value) clearLocation,
  }) {
    return clearLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetLocation value)? setLocation,
    TResult? Function(_ClearLocation value)? clearLocation,
  }) {
    return clearLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLocation value)? setLocation,
    TResult Function(_ClearLocation value)? clearLocation,
    required TResult orElse(),
  }) {
    if (clearLocation != null) {
      return clearLocation(this);
    }
    return orElse();
  }
}

abstract class _ClearLocation implements AddLocationEvent {
  const factory _ClearLocation() = _$ClearLocationImpl;
}

/// @nodoc
mixin _$AddLocationState {
  double? get lat => throw _privateConstructorUsedError;
  double? get lon => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddLocationStateCopyWith<AddLocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddLocationStateCopyWith<$Res> {
  factory $AddLocationStateCopyWith(
          AddLocationState value, $Res Function(AddLocationState) then) =
      _$AddLocationStateCopyWithImpl<$Res, AddLocationState>;
  @useResult
  $Res call({double? lat, double? lon, String? address});
}

/// @nodoc
class _$AddLocationStateCopyWithImpl<$Res, $Val extends AddLocationState>
    implements $AddLocationStateCopyWith<$Res> {
  _$AddLocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddLocationStateImplCopyWith<$Res>
    implements $AddLocationStateCopyWith<$Res> {
  factory _$$AddLocationStateImplCopyWith(_$AddLocationStateImpl value,
          $Res Function(_$AddLocationStateImpl) then) =
      __$$AddLocationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? lat, double? lon, String? address});
}

/// @nodoc
class __$$AddLocationStateImplCopyWithImpl<$Res>
    extends _$AddLocationStateCopyWithImpl<$Res, _$AddLocationStateImpl>
    implements _$$AddLocationStateImplCopyWith<$Res> {
  __$$AddLocationStateImplCopyWithImpl(_$AddLocationStateImpl _value,
      $Res Function(_$AddLocationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? address = freezed,
  }) {
    return _then(_$AddLocationStateImpl(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddLocationStateImpl implements _AddLocationState {
  const _$AddLocationStateImpl({this.lat, this.lon, this.address});

  @override
  final double? lat;
  @override
  final double? lon;
  @override
  final String? address;

  @override
  String toString() {
    return 'AddLocationState(lat: $lat, lon: $lon, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddLocationStateImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lon, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddLocationStateImplCopyWith<_$AddLocationStateImpl> get copyWith =>
      __$$AddLocationStateImplCopyWithImpl<_$AddLocationStateImpl>(
          this, _$identity);
}

abstract class _AddLocationState implements AddLocationState {
  const factory _AddLocationState(
      {final double? lat,
      final double? lon,
      final String? address}) = _$AddLocationStateImpl;

  @override
  double? get lat;
  @override
  double? get lon;
  @override
  String? get address;
  @override
  @JsonKey(ignore: true)
  _$$AddLocationStateImplCopyWith<_$AddLocationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
