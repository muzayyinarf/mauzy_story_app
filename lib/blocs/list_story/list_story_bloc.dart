import 'package:flutter/material.dart';
import 'package:mauzy_story_app/core.dart';

part 'list_story_event.dart';
part 'list_story_state.dart';
part 'list_story_bloc.freezed.dart';

class ListStoryBloc extends Bloc<ListStoryEvent, ListStoryState> {
  final ApiService datasource;
  final LoginInfoPreference prefs;
  ListStoryBloc(this.datasource, this.prefs) : super(const _Loaded([])) {
    on<_GetAllStories>((event, emit) async {
      try {
        switch (event.pageItems) {
          case null:
            return emit(const _Loaded([]));
          case 1:
            final loginInfo = await prefs.getLoginInfo();
            final response = await datasource.getAllStory(
              loginInfo!.token,
              page: event.pageItems,
            );
            response.fold(
              (l) => emit(_Error(l)),
              (r) {
                return emit(_Loaded(r.listStory));
              },
            );
          default:
            final loginInfo = await prefs.getLoginInfo();
            final currentState = state as _Loaded;
            final response = await datasource.getAllStory(
              loginInfo!.token,
              page: event.pageItems,
            );
            response.fold(
              (l) => emit(_Error(l)),
              (r) {
                final data = [...currentState.stories, ...r.listStory];
                return emit(_Loaded(data));
              },
            );
        }
      } catch (e) {
        debugPrint('$e');
        emit(const _Error(
            'Failed to connect to the server. Please check your internet connection.'));
      }
    });
  }
}
