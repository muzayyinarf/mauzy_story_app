// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequestModel model) doLogin,
    required TResult Function() doLogout,
    required TResult Function(RegisterRequestModel model) doRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequestModel model)? doLogin,
    TResult? Function()? doLogout,
    TResult? Function(RegisterRequestModel model)? doRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequestModel model)? doLogin,
    TResult Function()? doLogout,
    TResult Function(RegisterRequestModel model)? doRegister,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoLogin value) doLogin,
    required TResult Function(_DoLogout value) doLogout,
    required TResult Function(_DoRegister value) doRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoLogin value)? doLogin,
    TResult? Function(_DoLogout value)? doLogout,
    TResult? Function(_DoRegister value)? doRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoLogin value)? doLogin,
    TResult Function(_DoLogout value)? doLogout,
    TResult Function(_DoRegister value)? doRegister,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DoLoginImplCopyWith<$Res> {
  factory _$$DoLoginImplCopyWith(
          _$DoLoginImpl value, $Res Function(_$DoLoginImpl) then) =
      __$$DoLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginRequestModel model});
}

/// @nodoc
class __$$DoLoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$DoLoginImpl>
    implements _$$DoLoginImplCopyWith<$Res> {
  __$$DoLoginImplCopyWithImpl(
      _$DoLoginImpl _value, $Res Function(_$DoLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$DoLoginImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as LoginRequestModel,
    ));
  }
}

/// @nodoc

class _$DoLoginImpl implements _DoLogin {
  const _$DoLoginImpl(this.model);

  @override
  final LoginRequestModel model;

  @override
  String toString() {
    return 'AuthEvent.doLogin(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoLoginImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoLoginImplCopyWith<_$DoLoginImpl> get copyWith =>
      __$$DoLoginImplCopyWithImpl<_$DoLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequestModel model) doLogin,
    required TResult Function() doLogout,
    required TResult Function(RegisterRequestModel model) doRegister,
  }) {
    return doLogin(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequestModel model)? doLogin,
    TResult? Function()? doLogout,
    TResult? Function(RegisterRequestModel model)? doRegister,
  }) {
    return doLogin?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequestModel model)? doLogin,
    TResult Function()? doLogout,
    TResult Function(RegisterRequestModel model)? doRegister,
    required TResult orElse(),
  }) {
    if (doLogin != null) {
      return doLogin(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoLogin value) doLogin,
    required TResult Function(_DoLogout value) doLogout,
    required TResult Function(_DoRegister value) doRegister,
  }) {
    return doLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoLogin value)? doLogin,
    TResult? Function(_DoLogout value)? doLogout,
    TResult? Function(_DoRegister value)? doRegister,
  }) {
    return doLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoLogin value)? doLogin,
    TResult Function(_DoLogout value)? doLogout,
    TResult Function(_DoRegister value)? doRegister,
    required TResult orElse(),
  }) {
    if (doLogin != null) {
      return doLogin(this);
    }
    return orElse();
  }
}

abstract class _DoLogin implements AuthEvent {
  const factory _DoLogin(final LoginRequestModel model) = _$DoLoginImpl;

  LoginRequestModel get model;
  @JsonKey(ignore: true)
  _$$DoLoginImplCopyWith<_$DoLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoLogoutImplCopyWith<$Res> {
  factory _$$DoLogoutImplCopyWith(
          _$DoLogoutImpl value, $Res Function(_$DoLogoutImpl) then) =
      __$$DoLogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DoLogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$DoLogoutImpl>
    implements _$$DoLogoutImplCopyWith<$Res> {
  __$$DoLogoutImplCopyWithImpl(
      _$DoLogoutImpl _value, $Res Function(_$DoLogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DoLogoutImpl implements _DoLogout {
  const _$DoLogoutImpl();

  @override
  String toString() {
    return 'AuthEvent.doLogout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DoLogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequestModel model) doLogin,
    required TResult Function() doLogout,
    required TResult Function(RegisterRequestModel model) doRegister,
  }) {
    return doLogout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequestModel model)? doLogin,
    TResult? Function()? doLogout,
    TResult? Function(RegisterRequestModel model)? doRegister,
  }) {
    return doLogout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequestModel model)? doLogin,
    TResult Function()? doLogout,
    TResult Function(RegisterRequestModel model)? doRegister,
    required TResult orElse(),
  }) {
    if (doLogout != null) {
      return doLogout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoLogin value) doLogin,
    required TResult Function(_DoLogout value) doLogout,
    required TResult Function(_DoRegister value) doRegister,
  }) {
    return doLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoLogin value)? doLogin,
    TResult? Function(_DoLogout value)? doLogout,
    TResult? Function(_DoRegister value)? doRegister,
  }) {
    return doLogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoLogin value)? doLogin,
    TResult Function(_DoLogout value)? doLogout,
    TResult Function(_DoRegister value)? doRegister,
    required TResult orElse(),
  }) {
    if (doLogout != null) {
      return doLogout(this);
    }
    return orElse();
  }
}

abstract class _DoLogout implements AuthEvent {
  const factory _DoLogout() = _$DoLogoutImpl;
}

/// @nodoc
abstract class _$$DoRegisterImplCopyWith<$Res> {
  factory _$$DoRegisterImplCopyWith(
          _$DoRegisterImpl value, $Res Function(_$DoRegisterImpl) then) =
      __$$DoRegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterRequestModel model});
}

/// @nodoc
class __$$DoRegisterImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$DoRegisterImpl>
    implements _$$DoRegisterImplCopyWith<$Res> {
  __$$DoRegisterImplCopyWithImpl(
      _$DoRegisterImpl _value, $Res Function(_$DoRegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$DoRegisterImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as RegisterRequestModel,
    ));
  }
}

/// @nodoc

class _$DoRegisterImpl implements _DoRegister {
  const _$DoRegisterImpl(this.model);

  @override
  final RegisterRequestModel model;

  @override
  String toString() {
    return 'AuthEvent.doRegister(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoRegisterImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoRegisterImplCopyWith<_$DoRegisterImpl> get copyWith =>
      __$$DoRegisterImplCopyWithImpl<_$DoRegisterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequestModel model) doLogin,
    required TResult Function() doLogout,
    required TResult Function(RegisterRequestModel model) doRegister,
  }) {
    return doRegister(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequestModel model)? doLogin,
    TResult? Function()? doLogout,
    TResult? Function(RegisterRequestModel model)? doRegister,
  }) {
    return doRegister?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequestModel model)? doLogin,
    TResult Function()? doLogout,
    TResult Function(RegisterRequestModel model)? doRegister,
    required TResult orElse(),
  }) {
    if (doRegister != null) {
      return doRegister(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoLogin value) doLogin,
    required TResult Function(_DoLogout value) doLogout,
    required TResult Function(_DoRegister value) doRegister,
  }) {
    return doRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoLogin value)? doLogin,
    TResult? Function(_DoLogout value)? doLogout,
    TResult? Function(_DoRegister value)? doRegister,
  }) {
    return doRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoLogin value)? doLogin,
    TResult Function(_DoLogout value)? doLogout,
    TResult Function(_DoRegister value)? doRegister,
    required TResult orElse(),
  }) {
    if (doRegister != null) {
      return doRegister(this);
    }
    return orElse();
  }
}

abstract class _DoRegister implements AuthEvent {
  const factory _DoRegister(final RegisterRequestModel model) =
      _$DoRegisterImpl;

  RegisterRequestModel get model;
  @JsonKey(ignore: true)
  _$$DoRegisterImplCopyWith<_$DoRegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoggedInImplCopyWith<$Res> {
  factory _$$LoggedInImplCopyWith(
          _$LoggedInImpl value, $Res Function(_$LoggedInImpl) then) =
      __$$LoggedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedInImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoggedInImpl>
    implements _$$LoggedInImplCopyWith<$Res> {
  __$$LoggedInImplCopyWithImpl(
      _$LoggedInImpl _value, $Res Function(_$LoggedInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggedInImpl implements _LoggedIn {
  const _$LoggedInImpl();

  @override
  String toString() {
    return 'AuthState.loggedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function(String message) error,
  }) {
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function(String message)? error,
  }) {
    return loggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_Error value) error,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_Error value)? error,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _LoggedIn implements AuthState {
  const factory _LoggedIn() = _$LoggedInImpl;
}

/// @nodoc
abstract class _$$LoggedOutImplCopyWith<$Res> {
  factory _$$LoggedOutImplCopyWith(
          _$LoggedOutImpl value, $Res Function(_$LoggedOutImpl) then) =
      __$$LoggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedOutImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoggedOutImpl>
    implements _$$LoggedOutImplCopyWith<$Res> {
  __$$LoggedOutImplCopyWithImpl(
      _$LoggedOutImpl _value, $Res Function(_$LoggedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggedOutImpl implements _LoggedOut {
  const _$LoggedOutImpl();

  @override
  String toString() {
    return 'AuthState.loggedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function(String message) error,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function(String message)? error,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_Error value) error,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_Error value)? error,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class _LoggedOut implements AuthState {
  const factory _LoggedOut() = _$LoggedOutImpl;
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
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'AuthState.error(message: $message)';
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
    required TResult Function() loading,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loggedIn,
    TResult? Function()? loggedOut,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
