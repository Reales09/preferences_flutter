import 'dart:ffi';

import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  // Obtain shared preferences.
  static late SharedPreferences _prefs;

  static String _name = '';
  static bool _isDarkmode = false;
  static int _gender = 1;

  static Future init() async => _prefs = await SharedPreferences.getInstance();

  static String get name => _prefs.getString('name') ?? _name;

  static set name(String name) {
    _name = name;
    _prefs.setString('name', name);
  }

  static bool get isDarkmode => _prefs.getBool('isDarkmode') ?? _isDarkmode;

  static set isDarkmode(bool value) {
    _isDarkmode = value;
    _prefs.setBool('isDarkmode', value);
  }

  static int get gender => _prefs.getInt('gender') ?? _gender;

  static set gender(int value) {
    _gender = value;
    _prefs.setInt('gender', value);
  }
}
