part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.loading() = _Loading;
  const factory AuthState.loggedIn() = _LoggedIn;
  const factory AuthState.loggedOut() = _LoggedOut;
  const factory AuthState.error(String message) = _Error;
}
