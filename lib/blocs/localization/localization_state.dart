part of 'localization_bloc.dart';

@freezed
class LocalizationState with _$LocalizationState {
  const factory LocalizationState({required Locale locale}) =
      _LocalizationState;
}
