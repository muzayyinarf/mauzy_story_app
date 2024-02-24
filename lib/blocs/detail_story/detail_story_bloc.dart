import 'package:flutter/material.dart';
import 'package:mauzy_story_app/core.dart';

part 'detail_story_event.dart';
part 'detail_story_state.dart';
part 'detail_story_bloc.freezed.dart';

class DetailStoryBloc extends Bloc<DetailStoryEvent, DetailStoryState> {
  final ApiService apiService;
  final LoginInfoPreference loginInfoPrefs;
  DetailStoryBloc(this.apiService, this.loginInfoPrefs)
      : super(const _Initial()) {
    on<_GetDetail>((event, emit) async {
      emit(const _Loading());
      try {
        final loginInfo = await loginInfoPrefs.getLoginInfo();
        final token = loginInfo!.token;
        final result = await apiService.detailStory(event.id, token);
        result.fold(
          (l) => emit(_Error(l)),
          (r) => emit(_Loaded(r)),
        );
      } catch (e) {
        debugPrint('$e');
        emit(const _Error(
            'Failed to connect to the server. Please check your internet connection.'));
      }
    });
  }
}
