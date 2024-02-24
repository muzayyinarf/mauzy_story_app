import 'dart:convert';
import 'login_result_model.dart';

class LoginResponseModel {
  final bool error;
  final String message;
  final LoginResult loginResult;

  LoginResponseModel({
    required this.error,
    required this.message,
    required this.loginResult,
  });

  factory LoginResponseModel.fromJson(String str) =>
      LoginResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LoginResponseModel.fromMap(Map<String, dynamic> json) =>
      LoginResponseModel(
        error: json["error"],
        message: json["message"],
        loginResult: LoginResult.fromMap(json["loginResult"]),
      );

  Map<String, dynamic> toMap() => {
        "error": error,
        "message": message,
        "loginResult": loginResult.toMap(),
      };
}
