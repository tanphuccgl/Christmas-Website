import 'package:shared_preferences/shared_preferences.dart';

class UserPrefs {
  factory UserPrefs() => instance;
  UserPrefs._internal();

  static final UserPrefs instance = UserPrefs._internal();
  late SharedPreferences _prefs;
  Future initialize() async {
    _prefs = await SharedPreferences.getInstance();
  }

  bool getKey() {
    final value = _prefs.getBool("Key");
    return value ?? false;
  }

  void setKey() {
    _prefs.setBool("Key", true);
  }

  void clear() {
    _prefs.clear();
  }
}
