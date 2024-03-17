part of 'add_location_bloc.dart';

@freezed
class AddLocationEvent with _$AddLocationEvent {
  const factory AddLocationEvent.setLocation(
      double? lat, double? lon, String? address) = _SetLocation;
  const factory AddLocationEvent.clearLocation() = _ClearLocation;
}
