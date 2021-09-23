import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  // Set key value locally
  // @key: Key name
  // @value: Key value
  static Future<void> set(String key, String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  // Get data from preferences
  // @key: Key name
  static Future<String> get(String key) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(key) ?? '';
  }
}