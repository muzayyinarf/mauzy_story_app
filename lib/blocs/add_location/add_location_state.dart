part of 'add_location_bloc.dart';

@freezed
class AddLocationState with _$AddLocationState {
  const factory AddLocationState({
    double? lat,
    double? lon,
    String? address,
  }) = _AddLocationState;

  factory AddLocationState.initial() => const _AddLocationState();
}
