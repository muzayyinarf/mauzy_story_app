import 'package:flutter/widgets.dart';
import 'package:mauzy_story_app/core.dart';

part 'list_story_event.dart';
part 'list_story_state.dart';
part 'list_story_bloc.freezed.dart';

class ListStoryBloc extends Bloc<ListStoryEvent, ListStoryState> {
  final ApiService datasource;
  final LoginInfoPreference prefs;
  ListStoryBloc(this.datasource, this.prefs) : super(const _Initial()) {
    on<_Get>((event, emit) async {
      emit(const _Loading());
      try {
        final loginInfo = await prefs.getLoginInfo();

        final result = await datasource.getAllStory(loginInfo!.token);
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
