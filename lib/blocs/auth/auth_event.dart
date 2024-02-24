part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.doLogin(LoginRequestModel model) = _DoLogin;
  const factory AuthEvent.doLogout() = _DoLogout;
  const factory AuthEvent.doRegister(RegisterRequestModel model) = _DoRegister;
}
