import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_response_model.freezed.dart';
part 'common_response_model.g.dart';

@freezed
class CommonResponseModel with _$CommonResponseModel {
  const factory CommonResponseModel({
    required bool error,
    required String message,
  }) = _CommonResponseModel;

  factory CommonResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CommonResponseModelFromJson(json);
}
