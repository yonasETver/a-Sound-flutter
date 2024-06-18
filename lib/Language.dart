// Language.dart

import 'package:shared_preferences/shared_preferences.dart';

class Language {
  static String lan = "en-US";
  static const String keyLang = 'speechLang';

  static Future<void> init() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? value = prefs.getString(keyLang);
    lan = value ?? "en-US"; // Set default language if value is null
  }

  static Future<void> setLanguage(String language) async {
    lan = language;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(keyLang, language);
  }

  static String getLanguage() {
    return lan;
  }
}
