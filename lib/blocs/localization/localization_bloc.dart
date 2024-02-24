import 'package:flutter/material.dart';
import 'package:mauzy_story_app/core_package.dart';

part 'localization_event.dart';
part 'localization_state.dart';
part 'localization_bloc.freezed.dart';

class LocalizationBloc extends Bloc<LocalizationEvent, LocalizationState> {
  LocalizationBloc() : super(const LocalizationState(locale: Locale("id"))) {
    on<_SetLocale>((event, emit) {
      emit(LocalizationState(locale: event.locale));
    });
  }
}
