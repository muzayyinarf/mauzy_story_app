// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UploadEvent {
  List<int> get bytes => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String token, List<int> bytes, String fileName, String description)
        addStory,
    required TResult Function(
            List<int> bytes, String fileName, String description)
        addStoryGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String token, List<int> bytes, String fileName, String description)?
        addStory,
    TResult? Function(List<int> bytes, String fileName, String description)?
        addStoryGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String token, List<int> bytes, String fileName, String description)?
        addStory,
    TResult Function(List<int> bytes, String fileName, String description)?
        addStoryGuest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddStory value) addStory,
    required TResult Function(_AddStoryGuest value) addStoryGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddStory value)? addStory,
    TResult? Function(_AddStoryGuest value)? addStoryGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddStory value)? addStory,
    TResult Function(_AddStoryGuest value)? addStoryGuest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadEventCopyWith<UploadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadEventCopyWith<$Res> {
  factory $UploadEventCopyWith(
          UploadEvent value, $Res Function(UploadEvent) then) =
      _$UploadEventCopyWithImpl<$Res, UploadEvent>;
  @useResult
  $Res call({List<int> bytes, String fileName, String description});
}

/// @nodoc
class _$UploadEventCopyWithImpl<$Res, $Val extends UploadEvent>
    implements $UploadEventCopyWith<$Res> {
  _$UploadEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bytes = null,
    Object? fileName = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      bytes: null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddStoryImplCopyWith<$Res>
    implements $UploadEventCopyWith<$Res> {
  factory _$$AddStoryImplCopyWith(
          _$AddStoryImpl value, $Res Function(_$AddStoryImpl) then) =
      __$$AddStoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String token, List<int> bytes, String fileName, String description});
}

/// @nodoc
class __$$AddStoryImplCopyWithImpl<$Res>
    extends _$UploadEventCopyWithImpl<$Res, _$AddStoryImpl>
    implements _$$AddStoryImplCopyWith<$Res> {
  __$$AddStoryImplCopyWithImpl(
      _$AddStoryImpl _value, $Res Function(_$AddStoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? bytes = null,
    Object? fileName = null,
    Object? description = null,
  }) {
    return _then(_$AddStoryImpl(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      null == bytes
          ? _value._bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddStoryImpl implements _AddStory {
  const _$AddStoryImpl(
      this.token, final List<int> bytes, this.fileName, this.description)
      : _bytes = bytes;

  @override
  final String token;
  final List<int> _bytes;
  @override
  List<int> get bytes {
    if (_bytes is EqualUnmodifiableListView) return _bytes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bytes);
  }

  @override
  final String fileName;
  @override
  final String description;

  @override
  String toString() {
    return 'UploadEvent.addStory(token: $token, bytes: $bytes, fileName: $fileName, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStoryImpl &&
            (identical(other.token, token) || other.token == token) &&
            const DeepCollectionEquality().equals(other._bytes, _bytes) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token,
      const DeepCollectionEquality().hash(_bytes), fileName, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddStoryImplCopyWith<_$AddStoryImpl> get copyWith =>
      __$$AddStoryImplCopyWithImpl<_$AddStoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String token, List<int> bytes, String fileName, String description)
        addStory,
    required TResult Function(
            List<int> bytes, String fileName, String description)
        addStoryGuest,
  }) {
    return addStory(token, bytes, fileName, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String token, List<int> bytes, String fileName, String description)?
        addStory,
    TResult? Function(List<int> bytes, String fileName, String description)?
        addStoryGuest,
  }) {
    return addStory?.call(token, bytes, fileName, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String token, List<int> bytes, String fileName, String description)?
        addStory,
    TResult Function(List<int> bytes, String fileName, String description)?
        addStoryGuest,
    required TResult orElse(),
  }) {
    if (addStory != null) {
      return addStory(token, bytes, fileName, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddStory value) addStory,
    required TResult Function(_AddStoryGuest value) addStoryGuest,
  }) {
    return addStory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddStory value)? addStory,
    TResult? Function(_AddStoryGuest value)? addStoryGuest,
  }) {
    return addStory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddStory value)? addStory,
    TResult Function(_AddStoryGuest value)? addStoryGuest,
    required TResult orElse(),
  }) {
    if (addStory != null) {
      return addStory(this);
    }
    return orElse();
  }
}

abstract class _AddStory implements UploadEvent {
  const factory _AddStory(final String token, final List<int> bytes,
      final String fileName, final String description) = _$AddStoryImpl;

  String get token;
  @override
  List<int> get bytes;
  @override
  String get fileName;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$AddStoryImplCopyWith<_$AddStoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddStoryGuestImplCopyWith<$Res>
    implements $UploadEventCopyWith<$Res> {
  factory _$$AddStoryGuestImplCopyWith(
          _$AddStoryGuestImpl value, $Res Function(_$AddStoryGuestImpl) then) =
      __$$AddStoryGuestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> bytes, String fileName, String description});
}

/// @nodoc
class __$$AddStoryGuestImplCopyWithImpl<$Res>
    extends _$UploadEventCopyWithImpl<$Res, _$AddStoryGuestImpl>
    implements _$$AddStoryGuestImplCopyWith<$Res> {
  __$$AddStoryGuestImplCopyWithImpl(
      _$AddStoryGuestImpl _value, $Res Function(_$AddStoryGuestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bytes = null,
    Object? fileName = null,
    Object? description = null,
  }) {
    return _then(_$AddStoryGuestImpl(
      null == bytes
          ? _value._bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddStoryGuestImpl implements _AddStoryGuest {
  const _$AddStoryGuestImpl(
      final List<int> bytes, this.fileName, this.description)
      : _bytes = bytes;

  final List<int> _bytes;
  @override
  List<int> get bytes {
    if (_bytes is EqualUnmodifiableListView) return _bytes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bytes);
  }

  @override
  final String fileName;
  @override
  final String description;

  @override
  String toString() {
    return 'UploadEvent.addStoryGuest(bytes: $bytes, fileName: $fileName, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStoryGuestImpl &&
            const DeepCollectionEquality().equals(other._bytes, _bytes) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_bytes), fileName, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddStoryGuestImplCopyWith<_$AddStoryGuestImpl> get copyWith =>
      __$$AddStoryGuestImplCopyWithImpl<_$AddStoryGuestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String token, List<int> bytes, String fileName, String description)
        addStory,
    required TResult Function(
            List<int> bytes, String fileName, String description)
        addStoryGuest,
  }) {
    return addStoryGuest(bytes, fileName, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String token, List<int> bytes, String fileName, String description)?
        addStory,
    TResult? Function(List<int> bytes, String fileName, String description)?
        addStoryGuest,
  }) {
    return addStoryGuest?.call(bytes, fileName, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String token, List<int> bytes, String fileName, String description)?
        addStory,
    TResult Function(List<int> bytes, String fileName, String description)?
        addStoryGuest,
    required TResult orElse(),
  }) {
    if (addStoryGuest != null) {
      return addStoryGuest(bytes, fileName, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddStory value) addStory,
    required TResult Function(_AddStoryGuest value) addStoryGuest,
  }) {
    return addStoryGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddStory value)? addStory,
    TResult? Function(_AddStoryGuest value)? addStoryGuest,
  }) {
    return addStoryGuest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddStory value)? addStory,
    TResult Function(_AddStoryGuest value)? addStoryGuest,
    required TResult orElse(),
  }) {
    if (addStoryGuest != null) {
      return addStoryGuest(this);
    }
    return orElse();
  }
}

abstract class _AddStoryGuest implements UploadEvent {
  const factory _AddStoryGuest(final List<int> bytes, final String fileName,
      final String description) = _$AddStoryGuestImpl;

  @override
  List<int> get bytes;
  @override
  String get fileName;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$AddStoryGuestImplCopyWith<_$AddStoryGuestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UploadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uploading,
    required TResult Function(CommonResponseModel model) uploaded,
    required TResult Function() compressingImage,
    required TResult Function(List<int> compressedBytes) compressedImage,
    required TResult Function() resizingImage,
    required TResult Function(List<int> resizedBytes) resizedImage,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? uploading,
    TResult? Function(CommonResponseModel model)? uploaded,
    TResult? Function()? compressingImage,
    TResult? Function(List<int> compressedBytes)? compressedImage,
    TResult? Function()? resizingImage,
    TResult? Function(List<int> resizedBytes)? resizedImage,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploading,
    TResult Function(CommonResponseModel model)? uploaded,
    TResult Function()? compressingImage,
    TResult Function(List<int> compressedBytes)? compressedImage,
    TResult Function()? resizingImage,
    TResult Function(List<int> resizedBytes)? resizedImage,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Uploading value) uploading,
    required TResult Function(_Uploaded value) uploaded,
    required TResult Function(_CompressingImage value) compressingImage,
    required TResult Function(_CompressedImage value) compressedImage,
    required TResult Function(_ResizingImage value) resizingImage,
    required TResult Function(_ResizedImage value) resizedImage,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Uploading value)? uploading,
    TResult? Function(_Uploaded value)? uploaded,
    TResult? Function(_CompressingImage value)? compressingImage,
    TResult? Function(_CompressedImage value)? compressedImage,
    TResult? Function(_ResizingImage value)? resizingImage,
    TResult? Function(_ResizedImage value)? resizedImage,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_CompressingImage value)? compressingImage,
    TResult Function(_CompressedImage value)? compressedImage,
    TResult Function(_ResizingImage value)? resizingImage,
    TResult Function(_ResizedImage value)? resizedImage,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadStateCopyWith<$Res> {
  factory $UploadStateCopyWith(
          UploadState value, $Res Function(UploadState) then) =
      _$UploadStateCopyWithImpl<$Res, UploadState>;
}

/// @nodoc
class _$UploadStateCopyWithImpl<$Res, $Val extends UploadState>
    implements $UploadStateCopyWith<$Res> {
  _$UploadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UploadStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'UploadState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uploading,
    required TResult Function(CommonResponseModel model) uploaded,
    required TResult Function() compressingImage,
    required TResult Function(List<int> compressedBytes) compressedImage,
    required TResult Function() resizingImage,
    required TResult Function(List<int> resizedBytes) resizedImage,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? uploading,
    TResult? Function(CommonResponseModel model)? uploaded,
    TResult? Function()? compressingImage,
    TResult? Function(List<int> compressedBytes)? compressedImage,
    TResult? Function()? resizingImage,
    TResult? Function(List<int> resizedBytes)? resizedImage,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploading,
    TResult Function(CommonResponseModel model)? uploaded,
    TResult Function()? compressingImage,
    TResult Function(List<int> compressedBytes)? compressedImage,
    TResult Function()? resizingImage,
    TResult Function(List<int> resizedBytes)? resizedImage,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Uploading value) uploading,
    required TResult Function(_Uploaded value) uploaded,
    required TResult Function(_CompressingImage value) compressingImage,
    required TResult Function(_CompressedImage value) compressedImage,
    required TResult Function(_ResizingImage value) resizingImage,
    required TResult Function(_ResizedImage value) resizedImage,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Uploading value)? uploading,
    TResult? Function(_Uploaded value)? uploaded,
    TResult? Function(_CompressingImage value)? compressingImage,
    TResult? Function(_CompressedImage value)? compressedImage,
    TResult? Function(_ResizingImage value)? resizingImage,
    TResult? Function(_ResizedImage value)? resizedImage,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_CompressingImage value)? compressingImage,
    TResult Function(_CompressedImage value)? compressedImage,
    TResult Function(_ResizingImage value)? resizingImage,
    TResult Function(_ResizedImage value)? resizedImage,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UploadState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$UploadingImplCopyWith<$Res> {
  factory _$$UploadingImplCopyWith(
          _$UploadingImpl value, $Res Function(_$UploadingImpl) then) =
      __$$UploadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadingImplCopyWithImpl<$Res>
    extends _$UploadStateCopyWithImpl<$Res, _$UploadingImpl>
    implements _$$UploadingImplCopyWith<$Res> {
  __$$UploadingImplCopyWithImpl(
      _$UploadingImpl _value, $Res Function(_$UploadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UploadingImpl implements _Uploading {
  const _$UploadingImpl();

  @override
  String toString() {
    return 'UploadState.uploading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UploadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uploading,
    required TResult Function(CommonResponseModel model) uploaded,
    required TResult Function() compressingImage,
    required TResult Function(List<int> compressedBytes) compressedImage,
    required TResult Function() resizingImage,
    required TResult Function(List<int> resizedBytes) resizedImage,
    required TResult Function(String message) error,
  }) {
    return uploading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? uploading,
    TResult? Function(CommonResponseModel model)? uploaded,
    TResult? Function()? compressingImage,
    TResult? Function(List<int> compressedBytes)? compressedImage,
    TResult? Function()? resizingImage,
    TResult? Function(List<int> resizedBytes)? resizedImage,
    TResult? Function(String message)? error,
  }) {
    return uploading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploading,
    TResult Function(CommonResponseModel model)? uploaded,
    TResult Function()? compressingImage,
    TResult Function(List<int> compressedBytes)? compressedImage,
    TResult Function()? resizingImage,
    TResult Function(List<int> resizedBytes)? resizedImage,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (uploading != null) {
      return uploading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Uploading value) uploading,
    required TResult Function(_Uploaded value) uploaded,
    required TResult Function(_CompressingImage value) compressingImage,
    required TResult Function(_CompressedImage value) compressedImage,
    required TResult Function(_ResizingImage value) resizingImage,
    required TResult Function(_ResizedImage value) resizedImage,
    required TResult Function(_Error value) error,
  }) {
    return uploading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Uploading value)? uploading,
    TResult? Function(_Uploaded value)? uploaded,
    TResult? Function(_CompressingImage value)? compressingImage,
    TResult? Function(_CompressedImage value)? compressedImage,
    TResult? Function(_ResizingImage value)? resizingImage,
    TResult? Function(_ResizedImage value)? resizedImage,
    TResult? Function(_Error value)? error,
  }) {
    return uploading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_CompressingImage value)? compressingImage,
    TResult Function(_CompressedImage value)? compressedImage,
    TResult Function(_ResizingImage value)? resizingImage,
    TResult Function(_ResizedImage value)? resizedImage,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (uploading != null) {
      return uploading(this);
    }
    return orElse();
  }
}

abstract class _Uploading implements UploadState {
  const factory _Uploading() = _$UploadingImpl;
}

/// @nodoc
abstract class _$$UploadedImplCopyWith<$Res> {
  factory _$$UploadedImplCopyWith(
          _$UploadedImpl value, $Res Function(_$UploadedImpl) then) =
      __$$UploadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CommonResponseModel model});
}

/// @nodoc
class __$$UploadedImplCopyWithImpl<$Res>
    extends _$UploadStateCopyWithImpl<$Res, _$UploadedImpl>
    implements _$$UploadedImplCopyWith<$Res> {
  __$$UploadedImplCopyWithImpl(
      _$UploadedImpl _value, $Res Function(_$UploadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$UploadedImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CommonResponseModel,
    ));
  }
}

/// @nodoc

class _$UploadedImpl implements _Uploaded {
  const _$UploadedImpl(this.model);

  @override
  final CommonResponseModel model;

  @override
  String toString() {
    return 'UploadState.uploaded(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadedImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadedImplCopyWith<_$UploadedImpl> get copyWith =>
      __$$UploadedImplCopyWithImpl<_$UploadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uploading,
    required TResult Function(CommonResponseModel model) uploaded,
    required TResult Function() compressingImage,
    required TResult Function(List<int> compressedBytes) compressedImage,
    required TResult Function() resizingImage,
    required TResult Function(List<int> resizedBytes) resizedImage,
    required TResult Function(String message) error,
  }) {
    return uploaded(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? uploading,
    TResult? Function(CommonResponseModel model)? uploaded,
    TResult? Function()? compressingImage,
    TResult? Function(List<int> compressedBytes)? compressedImage,
    TResult? Function()? resizingImage,
    TResult? Function(List<int> resizedBytes)? resizedImage,
    TResult? Function(String message)? error,
  }) {
    return uploaded?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploading,
    TResult Function(CommonResponseModel model)? uploaded,
    TResult Function()? compressingImage,
    TResult Function(List<int> compressedBytes)? compressedImage,
    TResult Function()? resizingImage,
    TResult Function(List<int> resizedBytes)? resizedImage,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (uploaded != null) {
      return uploaded(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Uploading value) uploading,
    required TResult Function(_Uploaded value) uploaded,
    required TResult Function(_CompressingImage value) compressingImage,
    required TResult Function(_CompressedImage value) compressedImage,
    required TResult Function(_ResizingImage value) resizingImage,
    required TResult Function(_ResizedImage value) resizedImage,
    required TResult Function(_Error value) error,
  }) {
    return uploaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Uploading value)? uploading,
    TResult? Function(_Uploaded value)? uploaded,
    TResult? Function(_CompressingImage value)? compressingImage,
    TResult? Function(_CompressedImage value)? compressedImage,
    TResult? Function(_ResizingImage value)? resizingImage,
    TResult? Function(_ResizedImage value)? resizedImage,
    TResult? Function(_Error value)? error,
  }) {
    return uploaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_CompressingImage value)? compressingImage,
    TResult Function(_CompressedImage value)? compressedImage,
    TResult Function(_ResizingImage value)? resizingImage,
    TResult Function(_ResizedImage value)? resizedImage,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (uploaded != null) {
      return uploaded(this);
    }
    return orElse();
  }
}

abstract class _Uploaded implements UploadState {
  const factory _Uploaded(final CommonResponseModel model) = _$UploadedImpl;

  CommonResponseModel get model;
  @JsonKey(ignore: true)
  _$$UploadedImplCopyWith<_$UploadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompressingImageImplCopyWith<$Res> {
  factory _$$CompressingImageImplCopyWith(_$CompressingImageImpl value,
          $Res Function(_$CompressingImageImpl) then) =
      __$$CompressingImageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompressingImageImplCopyWithImpl<$Res>
    extends _$UploadStateCopyWithImpl<$Res, _$CompressingImageImpl>
    implements _$$CompressingImageImplCopyWith<$Res> {
  __$$CompressingImageImplCopyWithImpl(_$CompressingImageImpl _value,
      $Res Function(_$CompressingImageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CompressingImageImpl implements _CompressingImage {
  const _$CompressingImageImpl();

  @override
  String toString() {
    return 'UploadState.compressingImage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CompressingImageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uploading,
    required TResult Function(CommonResponseModel model) uploaded,
    required TResult Function() compressingImage,
    required TResult Function(List<int> compressedBytes) compressedImage,
    required TResult Function() resizingImage,
    required TResult Function(List<int> resizedBytes) resizedImage,
    required TResult Function(String message) error,
  }) {
    return compressingImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? uploading,
    TResult? Function(CommonResponseModel model)? uploaded,
    TResult? Function()? compressingImage,
    TResult? Function(List<int> compressedBytes)? compressedImage,
    TResult? Function()? resizingImage,
    TResult? Function(List<int> resizedBytes)? resizedImage,
    TResult? Function(String message)? error,
  }) {
    return compressingImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploading,
    TResult Function(CommonResponseModel model)? uploaded,
    TResult Function()? compressingImage,
    TResult Function(List<int> compressedBytes)? compressedImage,
    TResult Function()? resizingImage,
    TResult Function(List<int> resizedBytes)? resizedImage,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (compressingImage != null) {
      return compressingImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Uploading value) uploading,
    required TResult Function(_Uploaded value) uploaded,
    required TResult Function(_CompressingImage value) compressingImage,
    required TResult Function(_CompressedImage value) compressedImage,
    required TResult Function(_ResizingImage value) resizingImage,
    required TResult Function(_ResizedImage value) resizedImage,
    required TResult Function(_Error value) error,
  }) {
    return compressingImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Uploading value)? uploading,
    TResult? Function(_Uploaded value)? uploaded,
    TResult? Function(_CompressingImage value)? compressingImage,
    TResult? Function(_CompressedImage value)? compressedImage,
    TResult? Function(_ResizingImage value)? resizingImage,
    TResult? Function(_ResizedImage value)? resizedImage,
    TResult? Function(_Error value)? error,
  }) {
    return compressingImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_CompressingImage value)? compressingImage,
    TResult Function(_CompressedImage value)? compressedImage,
    TResult Function(_ResizingImage value)? resizingImage,
    TResult Function(_ResizedImage value)? resizedImage,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (compressingImage != null) {
      return compressingImage(this);
    }
    return orElse();
  }
}

abstract class _CompressingImage implements UploadState {
  const factory _CompressingImage() = _$CompressingImageImpl;
}

/// @nodoc
abstract class _$$CompressedImageImplCopyWith<$Res> {
  factory _$$CompressedImageImplCopyWith(_$CompressedImageImpl value,
          $Res Function(_$CompressedImageImpl) then) =
      __$$CompressedImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> compressedBytes});
}

/// @nodoc
class __$$CompressedImageImplCopyWithImpl<$Res>
    extends _$UploadStateCopyWithImpl<$Res, _$CompressedImageImpl>
    implements _$$CompressedImageImplCopyWith<$Res> {
  __$$CompressedImageImplCopyWithImpl(
      _$CompressedImageImpl _value, $Res Function(_$CompressedImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? compressedBytes = null,
  }) {
    return _then(_$CompressedImageImpl(
      null == compressedBytes
          ? _value._compressedBytes
          : compressedBytes // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$CompressedImageImpl implements _CompressedImage {
  const _$CompressedImageImpl(final List<int> compressedBytes)
      : _compressedBytes = compressedBytes;

  final List<int> _compressedBytes;
  @override
  List<int> get compressedBytes {
    if (_compressedBytes is EqualUnmodifiableListView) return _compressedBytes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_compressedBytes);
  }

  @override
  String toString() {
    return 'UploadState.compressedImage(compressedBytes: $compressedBytes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompressedImageImpl &&
            const DeepCollectionEquality()
                .equals(other._compressedBytes, _compressedBytes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_compressedBytes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompressedImageImplCopyWith<_$CompressedImageImpl> get copyWith =>
      __$$CompressedImageImplCopyWithImpl<_$CompressedImageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uploading,
    required TResult Function(CommonResponseModel model) uploaded,
    required TResult Function() compressingImage,
    required TResult Function(List<int> compressedBytes) compressedImage,
    required TResult Function() resizingImage,
    required TResult Function(List<int> resizedBytes) resizedImage,
    required TResult Function(String message) error,
  }) {
    return compressedImage(compressedBytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? uploading,
    TResult? Function(CommonResponseModel model)? uploaded,
    TResult? Function()? compressingImage,
    TResult? Function(List<int> compressedBytes)? compressedImage,
    TResult? Function()? resizingImage,
    TResult? Function(List<int> resizedBytes)? resizedImage,
    TResult? Function(String message)? error,
  }) {
    return compressedImage?.call(compressedBytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploading,
    TResult Function(CommonResponseModel model)? uploaded,
    TResult Function()? compressingImage,
    TResult Function(List<int> compressedBytes)? compressedImage,
    TResult Function()? resizingImage,
    TResult Function(List<int> resizedBytes)? resizedImage,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (compressedImage != null) {
      return compressedImage(compressedBytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Uploading value) uploading,
    required TResult Function(_Uploaded value) uploaded,
    required TResult Function(_CompressingImage value) compressingImage,
    required TResult Function(_CompressedImage value) compressedImage,
    required TResult Function(_ResizingImage value) resizingImage,
    required TResult Function(_ResizedImage value) resizedImage,
    required TResult Function(_Error value) error,
  }) {
    return compressedImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Uploading value)? uploading,
    TResult? Function(_Uploaded value)? uploaded,
    TResult? Function(_CompressingImage value)? compressingImage,
    TResult? Function(_CompressedImage value)? compressedImage,
    TResult? Function(_ResizingImage value)? resizingImage,
    TResult? Function(_ResizedImage value)? resizedImage,
    TResult? Function(_Error value)? error,
  }) {
    return compressedImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_CompressingImage value)? compressingImage,
    TResult Function(_CompressedImage value)? compressedImage,
    TResult Function(_ResizingImage value)? resizingImage,
    TResult Function(_ResizedImage value)? resizedImage,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (compressedImage != null) {
      return compressedImage(this);
    }
    return orElse();
  }
}

abstract class _CompressedImage implements UploadState {
  const factory _CompressedImage(final List<int> compressedBytes) =
      _$CompressedImageImpl;

  List<int> get compressedBytes;
  @JsonKey(ignore: true)
  _$$CompressedImageImplCopyWith<_$CompressedImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResizingImageImplCopyWith<$Res> {
  factory _$$ResizingImageImplCopyWith(
          _$ResizingImageImpl value, $Res Function(_$ResizingImageImpl) then) =
      __$$ResizingImageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResizingImageImplCopyWithImpl<$Res>
    extends _$UploadStateCopyWithImpl<$Res, _$ResizingImageImpl>
    implements _$$ResizingImageImplCopyWith<$Res> {
  __$$ResizingImageImplCopyWithImpl(
      _$ResizingImageImpl _value, $Res Function(_$ResizingImageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResizingImageImpl implements _ResizingImage {
  const _$ResizingImageImpl();

  @override
  String toString() {
    return 'UploadState.resizingImage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResizingImageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uploading,
    required TResult Function(CommonResponseModel model) uploaded,
    required TResult Function() compressingImage,
    required TResult Function(List<int> compressedBytes) compressedImage,
    required TResult Function() resizingImage,
    required TResult Function(List<int> resizedBytes) resizedImage,
    required TResult Function(String message) error,
  }) {
    return resizingImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? uploading,
    TResult? Function(CommonResponseModel model)? uploaded,
    TResult? Function()? compressingImage,
    TResult? Function(List<int> compressedBytes)? compressedImage,
    TResult? Function()? resizingImage,
    TResult? Function(List<int> resizedBytes)? resizedImage,
    TResult? Function(String message)? error,
  }) {
    return resizingImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploading,
    TResult Function(CommonResponseModel model)? uploaded,
    TResult Function()? compressingImage,
    TResult Function(List<int> compressedBytes)? compressedImage,
    TResult Function()? resizingImage,
    TResult Function(List<int> resizedBytes)? resizedImage,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (resizingImage != null) {
      return resizingImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Uploading value) uploading,
    required TResult Function(_Uploaded value) uploaded,
    required TResult Function(_CompressingImage value) compressingImage,
    required TResult Function(_CompressedImage value) compressedImage,
    required TResult Function(_ResizingImage value) resizingImage,
    required TResult Function(_ResizedImage value) resizedImage,
    required TResult Function(_Error value) error,
  }) {
    return resizingImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Uploading value)? uploading,
    TResult? Function(_Uploaded value)? uploaded,
    TResult? Function(_CompressingImage value)? compressingImage,
    TResult? Function(_CompressedImage value)? compressedImage,
    TResult? Function(_ResizingImage value)? resizingImage,
    TResult? Function(_ResizedImage value)? resizedImage,
    TResult? Function(_Error value)? error,
  }) {
    return resizingImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_CompressingImage value)? compressingImage,
    TResult Function(_CompressedImage value)? compressedImage,
    TResult Function(_ResizingImage value)? resizingImage,
    TResult Function(_ResizedImage value)? resizedImage,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (resizingImage != null) {
      return resizingImage(this);
    }
    return orElse();
  }
}

abstract class _ResizingImage implements UploadState {
  const factory _ResizingImage() = _$ResizingImageImpl;
}

/// @nodoc
abstract class _$$ResizedImageImplCopyWith<$Res> {
  factory _$$ResizedImageImplCopyWith(
          _$ResizedImageImpl value, $Res Function(_$ResizedImageImpl) then) =
      __$$ResizedImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> resizedBytes});
}

/// @nodoc
class __$$ResizedImageImplCopyWithImpl<$Res>
    extends _$UploadStateCopyWithImpl<$Res, _$ResizedImageImpl>
    implements _$$ResizedImageImplCopyWith<$Res> {
  __$$ResizedImageImplCopyWithImpl(
      _$ResizedImageImpl _value, $Res Function(_$ResizedImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resizedBytes = null,
  }) {
    return _then(_$ResizedImageImpl(
      null == resizedBytes
          ? _value._resizedBytes
          : resizedBytes // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$ResizedImageImpl implements _ResizedImage {
  const _$ResizedImageImpl(final List<int> resizedBytes)
      : _resizedBytes = resizedBytes;

  final List<int> _resizedBytes;
  @override
  List<int> get resizedBytes {
    if (_resizedBytes is EqualUnmodifiableListView) return _resizedBytes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resizedBytes);
  }

  @override
  String toString() {
    return 'UploadState.resizedImage(resizedBytes: $resizedBytes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResizedImageImpl &&
            const DeepCollectionEquality()
                .equals(other._resizedBytes, _resizedBytes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_resizedBytes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResizedImageImplCopyWith<_$ResizedImageImpl> get copyWith =>
      __$$ResizedImageImplCopyWithImpl<_$ResizedImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uploading,
    required TResult Function(CommonResponseModel model) uploaded,
    required TResult Function() compressingImage,
    required TResult Function(List<int> compressedBytes) compressedImage,
    required TResult Function() resizingImage,
    required TResult Function(List<int> resizedBytes) resizedImage,
    required TResult Function(String message) error,
  }) {
    return resizedImage(resizedBytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? uploading,
    TResult? Function(CommonResponseModel model)? uploaded,
    TResult? Function()? compressingImage,
    TResult? Function(List<int> compressedBytes)? compressedImage,
    TResult? Function()? resizingImage,
    TResult? Function(List<int> resizedBytes)? resizedImage,
    TResult? Function(String message)? error,
  }) {
    return resizedImage?.call(resizedBytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploading,
    TResult Function(CommonResponseModel model)? uploaded,
    TResult Function()? compressingImage,
    TResult Function(List<int> compressedBytes)? compressedImage,
    TResult Function()? resizingImage,
    TResult Function(List<int> resizedBytes)? resizedImage,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (resizedImage != null) {
      return resizedImage(resizedBytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Uploading value) uploading,
    required TResult Function(_Uploaded value) uploaded,
    required TResult Function(_CompressingImage value) compressingImage,
    required TResult Function(_CompressedImage value) compressedImage,
    required TResult Function(_ResizingImage value) resizingImage,
    required TResult Function(_ResizedImage value) resizedImage,
    required TResult Function(_Error value) error,
  }) {
    return resizedImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Uploading value)? uploading,
    TResult? Function(_Uploaded value)? uploaded,
    TResult? Function(_CompressingImage value)? compressingImage,
    TResult? Function(_CompressedImage value)? compressedImage,
    TResult? Function(_ResizingImage value)? resizingImage,
    TResult? Function(_ResizedImage value)? resizedImage,
    TResult? Function(_Error value)? error,
  }) {
    return resizedImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_CompressingImage value)? compressingImage,
    TResult Function(_CompressedImage value)? compressedImage,
    TResult Function(_ResizingImage value)? resizingImage,
    TResult Function(_ResizedImage value)? resizedImage,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (resizedImage != null) {
      return resizedImage(this);
    }
    return orElse();
  }
}

abstract class _ResizedImage implements UploadState {
  const factory _ResizedImage(final List<int> resizedBytes) =
      _$ResizedImageImpl;

  List<int> get resizedBytes;
  @JsonKey(ignore: true)
  _$$ResizedImageImplCopyWith<_$ResizedImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$UploadStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UploadState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uploading,
    required TResult Function(CommonResponseModel model) uploaded,
    required TResult Function() compressingImage,
    required TResult Function(List<int> compressedBytes) compressedImage,
    required TResult Function() resizingImage,
    required TResult Function(List<int> resizedBytes) resizedImage,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? uploading,
    TResult? Function(CommonResponseModel model)? uploaded,
    TResult? Function()? compressingImage,
    TResult? Function(List<int> compressedBytes)? compressedImage,
    TResult? Function()? resizingImage,
    TResult? Function(List<int> resizedBytes)? resizedImage,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploading,
    TResult Function(CommonResponseModel model)? uploaded,
    TResult Function()? compressingImage,
    TResult Function(List<int> compressedBytes)? compressedImage,
    TResult Function()? resizingImage,
    TResult Function(List<int> resizedBytes)? resizedImage,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Uploading value) uploading,
    required TResult Function(_Uploaded value) uploaded,
    required TResult Function(_CompressingImage value) compressingImage,
    required TResult Function(_CompressedImage value) compressedImage,
    required TResult Function(_ResizingImage value) resizingImage,
    required TResult Function(_ResizedImage value) resizedImage,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Uploading value)? uploading,
    TResult? Function(_Uploaded value)? uploaded,
    TResult? Function(_CompressingImage value)? compressingImage,
    TResult? Function(_CompressedImage value)? compressedImage,
    TResult? Function(_ResizingImage value)? resizingImage,
    TResult? Function(_ResizedImage value)? resizedImage,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Uploading value)? uploading,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_CompressingImage value)? compressingImage,
    TResult Function(_CompressedImage value)? compressedImage,
    TResult Function(_ResizingImage value)? resizingImage,
    TResult Function(_ResizedImage value)? resizedImage,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements UploadState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
