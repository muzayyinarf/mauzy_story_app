import 'dart:convert';

class CommonResponseModel {
  final bool error;
  final String message;

  CommonResponseModel({
    required this.error,
    required this.message,
  });

  factory CommonResponseModel.fromJson(String str) =>
      CommonResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CommonResponseModel.fromMap(Map<String, dynamic> json) =>
      CommonResponseModel(
        error: json["error"],
        message: json["message"],
      );

  Map<String, dynamic> toMap() => {
        "error": error,
        "message": message,
      };
}
