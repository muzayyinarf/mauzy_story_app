import 'package:mauzy_story_app/core.dart';

class LoginInfoPreference {
  static const _loginInfoKey = 'loginInfo';

  Future<bool> saveLoginInfo(LoginResult model) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final jsonStr = model.toJson();
    return prefs.setString(_loginInfoKey, jsonStr);
  }

  Future<LoginResult?> getLoginInfo() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.reload();
    final jsonStr = prefs.getString(_loginInfoKey);
    return (jsonStr != null) ? LoginResult.fromJson(jsonStr) : null;
  }

  Future<bool> removeLoginInfo() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove(_loginInfoKey);
  }
}
