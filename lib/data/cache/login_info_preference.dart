import 'dart:convert';

import 'package:mauzy_story_app/core.dart';

class LoginInfoPreference {
  static const _loginInfoKey = 'loginInfo';

  Future<bool> saveLoginInfo(LoginResultModel model) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final jsonStr = jsonEncode(model);
    return prefs.setString(_loginInfoKey, jsonStr);
  }

  Future<LoginResultModel?> getLoginInfo() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.reload();
    final jsonStr = prefs.getString(_loginInfoKey);
    return (jsonStr != null)
        ? LoginResultModel.fromJson(json.decode(jsonStr))
        : null;
  }

  Future<bool> removeLoginInfo() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove(_loginInfoKey);
  }
}
