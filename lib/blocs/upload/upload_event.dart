part of 'upload_bloc.dart';

@freezed
class UploadEvent with _$UploadEvent {
  const factory UploadEvent.addStory(
      String token,
      List<int> bytes,
      String fileName,
      String description,
      double? lat,
      double? lon) = _AddStory;
  const factory UploadEvent.addStoryGuest(
      List<int> bytes, String fileName, String description) = _AddStoryGuest;
}
