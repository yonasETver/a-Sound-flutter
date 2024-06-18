import 'dart:async';
import 'dart:ui';
import 'package:shared_preferences/shared_preferences.dart';

class ColorsBg {
  static late Color bg = Color(0xFF2BC198); // Declare bg as late

  static const String keyBgColor = 'bgColor';

  static Future<void> init() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? value = prefs.getInt(keyBgColor);
    bg = value != null
        ? Color(value)
        : Color(0xFF2BC198); // Set default color if value is null
  }

  static Future<void> setColor(Color color) async {
    bg = color;

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(keyBgColor, bg.value);
  }

  static Color getColor() {
    return bg;
  }
}
