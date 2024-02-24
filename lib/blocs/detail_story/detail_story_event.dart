part of 'detail_story_bloc.dart';

@freezed
class DetailStoryEvent with _$DetailStoryEvent {
  const factory DetailStoryEvent.getDetail(String id) = _GetDetail;
}
