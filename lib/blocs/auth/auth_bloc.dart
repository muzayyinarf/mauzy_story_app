import 'package:flutter/material.dart';
import 'package:mauzy_story_app/core.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final ApiService datasource;
  final LoginInfoPreference prefs;
  AuthBloc(this.datasource, this.prefs) : super(const _LoggedOut()) {
    on<_DoLogin>((event, emit) async {
      emit(const _Loading());
      try {
        final result = await datasource.login(event.model);

        result.fold(
          (l) {
            emit(_Error(l));
          },
          (r) {
            final loginInfo = r.loginResult;
            prefs.saveLoginInfo(loginInfo);
            emit(const _LoggedIn());
          },
        );
      } catch (e) {
        emit(const _Error(
            'Failed to connect to the server. Please check your internet connection.'));
      }
    });
    on<_DoLogout>((event, emit) async {
      emit(const _Loading());
      try {
        prefs.removeLoginInfo();
        emit(const _LoggedOut());
      } catch (e) {
        debugPrint('$e');
        emit(const _Error(
            'Failed to connect to the server. Please check your internet connection.'));
      }
    });

    on<_DoRegister>((event, emit) async {
      emit(const _Loading());
      try {
        final result = await datasource.register(event.model);
        result.fold(
          (l) => emit(_Error(l)),
          (r) async {
            emit(const _LoggedOut());
          },
        );
      } catch (e) {
        debugPrint('$e');
        emit(const _Error(
            'Failed to connect to the server. Please check your internet connection.'));
      }
    });
  }
}
