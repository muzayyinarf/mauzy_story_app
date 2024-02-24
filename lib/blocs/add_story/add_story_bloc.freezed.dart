// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_story_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddStoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? imagePath, XFile? imageFile) setImage,
    required TResult Function() clearImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? imagePath, XFile? imageFile)? setImage,
    TResult? Function()? clearImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? imagePath, XFile? imageFile)? setImage,
    TResult Function()? clearImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetImage value) setImage,
    required TResult Function(_ClearImage value) clearImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetImage value)? setImage,
    TResult? Function(_ClearImage value)? clearImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetImage value)? setImage,
    TResult Function(_ClearImage value)? clearImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStoryEventCopyWith<$Res> {
  factory $AddStoryEventCopyWith(
          AddStoryEvent value, $Res Function(AddStoryEvent) then) =
      _$AddStoryEventCopyWithImpl<$Res, AddStoryEvent>;
}

/// @nodoc
class _$AddStoryEventCopyWithImpl<$Res, $Val extends AddStoryEvent>
    implements $AddStoryEventCopyWith<$Res> {
  _$AddStoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SetImageImplCopyWith<$Res> {
  factory _$$SetImageImplCopyWith(
          _$SetImageImpl value, $Res Function(_$SetImageImpl) then) =
      __$$SetImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? imagePath, XFile? imageFile});
}

/// @nodoc
class __$$SetImageImplCopyWithImpl<$Res>
    extends _$AddStoryEventCopyWithImpl<$Res, _$SetImageImpl>
    implements _$$SetImageImplCopyWith<$Res> {
  __$$SetImageImplCopyWithImpl(
      _$SetImageImpl _value, $Res Function(_$SetImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = freezed,
    Object? imageFile = freezed,
  }) {
    return _then(_$SetImageImpl(
      freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$SetImageImpl implements _SetImage {
  const _$SetImageImpl(this.imagePath, this.imageFile);

  @override
  final String? imagePath;
  @override
  final XFile? imageFile;

  @override
  String toString() {
    return 'AddStoryEvent.setImage(imagePath: $imagePath, imageFile: $imageFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetImageImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath, imageFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetImageImplCopyWith<_$SetImageImpl> get copyWith =>
      __$$SetImageImplCopyWithImpl<_$SetImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? imagePath, XFile? imageFile) setImage,
    required TResult Function() clearImage,
  }) {
    return setImage(imagePath, imageFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? imagePath, XFile? imageFile)? setImage,
    TResult? Function()? clearImage,
  }) {
    return setImage?.call(imagePath, imageFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? imagePath, XFile? imageFile)? setImage,
    TResult Function()? clearImage,
    required TResult orElse(),
  }) {
    if (setImage != null) {
      return setImage(imagePath, imageFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetImage value) setImage,
    required TResult Function(_ClearImage value) clearImage,
  }) {
    return setImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetImage value)? setImage,
    TResult? Function(_ClearImage value)? clearImage,
  }) {
    return setImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetImage value)? setImage,
    TResult Function(_ClearImage value)? clearImage,
    required TResult orElse(),
  }) {
    if (setImage != null) {
      return setImage(this);
    }
    return orElse();
  }
}

abstract class _SetImage implements AddStoryEvent {
  const factory _SetImage(final String? imagePath, final XFile? imageFile) =
      _$SetImageImpl;

  String? get imagePath;
  XFile? get imageFile;
  @JsonKey(ignore: true)
  _$$SetImageImplCopyWith<_$SetImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearImageImplCopyWith<$Res> {
  factory _$$ClearImageImplCopyWith(
          _$ClearImageImpl value, $Res Function(_$ClearImageImpl) then) =
      __$$ClearImageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearImageImplCopyWithImpl<$Res>
    extends _$AddStoryEventCopyWithImpl<$Res, _$ClearImageImpl>
    implements _$$ClearImageImplCopyWith<$Res> {
  __$$ClearImageImplCopyWithImpl(
      _$ClearImageImpl _value, $Res Function(_$ClearImageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearImageImpl implements _ClearImage {
  const _$ClearImageImpl();

  @override
  String toString() {
    return 'AddStoryEvent.clearImage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearImageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? imagePath, XFile? imageFile) setImage,
    required TResult Function() clearImage,
  }) {
    return clearImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? imagePath, XFile? imageFile)? setImage,
    TResult? Function()? clearImage,
  }) {
    return clearImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? imagePath, XFile? imageFile)? setImage,
    TResult Function()? clearImage,
    required TResult orElse(),
  }) {
    if (clearImage != null) {
      return clearImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetImage value) setImage,
    required TResult Function(_ClearImage value) clearImage,
  }) {
    return clearImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetImage value)? setImage,
    TResult? Function(_ClearImage value)? clearImage,
  }) {
    return clearImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetImage value)? setImage,
    TResult Function(_ClearImage value)? clearImage,
    required TResult orElse(),
  }) {
    if (clearImage != null) {
      return clearImage(this);
    }
    return orElse();
  }
}

abstract class _ClearImage implements AddStoryEvent {
  const factory _ClearImage() = _$ClearImageImpl;
}

/// @nodoc
mixin _$AddStoryState {
  String? get imagePath => throw _privateConstructorUsedError;
  XFile? get imageFile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddStoryStateCopyWith<AddStoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStoryStateCopyWith<$Res> {
  factory $AddStoryStateCopyWith(
          AddStoryState value, $Res Function(AddStoryState) then) =
      _$AddStoryStateCopyWithImpl<$Res, AddStoryState>;
  @useResult
  $Res call({String? imagePath, XFile? imageFile});
}

/// @nodoc
class _$AddStoryStateCopyWithImpl<$Res, $Val extends AddStoryState>
    implements $AddStoryStateCopyWith<$Res> {
  _$AddStoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = freezed,
    Object? imageFile = freezed,
  }) {
    return _then(_value.copyWith(
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      imageFile: freezed == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddStoryStateImplCopyWith<$Res>
    implements $AddStoryStateCopyWith<$Res> {
  factory _$$AddStoryStateImplCopyWith(
          _$AddStoryStateImpl value, $Res Function(_$AddStoryStateImpl) then) =
      __$$AddStoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? imagePath, XFile? imageFile});
}

/// @nodoc
class __$$AddStoryStateImplCopyWithImpl<$Res>
    extends _$AddStoryStateCopyWithImpl<$Res, _$AddStoryStateImpl>
    implements _$$AddStoryStateImplCopyWith<$Res> {
  __$$AddStoryStateImplCopyWithImpl(
      _$AddStoryStateImpl _value, $Res Function(_$AddStoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = freezed,
    Object? imageFile = freezed,
  }) {
    return _then(_$AddStoryStateImpl(
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      imageFile: freezed == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$AddStoryStateImpl implements _AddStoryState {
  const _$AddStoryStateImpl({this.imagePath, this.imageFile});

  @override
  final String? imagePath;
  @override
  final XFile? imageFile;

  @override
  String toString() {
    return 'AddStoryState(imagePath: $imagePath, imageFile: $imageFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStoryStateImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath, imageFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddStoryStateImplCopyWith<_$AddStoryStateImpl> get copyWith =>
      __$$AddStoryStateImplCopyWithImpl<_$AddStoryStateImpl>(this, _$identity);
}

abstract class _AddStoryState implements AddStoryState {
  const factory _AddStoryState(
      {final String? imagePath, final XFile? imageFile}) = _$AddStoryStateImpl;

  @override
  String? get imagePath;
  @override
  XFile? get imageFile;
  @override
  @JsonKey(ignore: true)
  _$$AddStoryStateImplCopyWith<_$AddStoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
