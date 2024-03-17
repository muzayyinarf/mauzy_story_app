import 'package:mauzy_story_app/core.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    required bool error,
    required String message,
    required LoginResultModel loginResult,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      LoginResponseModel(
        error: json["error"],
        message: json["message"],
        loginResult: LoginResultModel.fromJson(json["loginResult"]),
      );
}
