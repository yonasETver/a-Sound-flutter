import 'package:a_sound/Language.dart';
import 'package:flutter/material.dart';
import 'package:a_sound/pages/abc.dart';
import 'package:a_sound/pages/color.dart';
import 'package:a_sound/pages/number.dart';
import 'package:a_sound/pages/word.dart';
import 'package:a_sound/mainMenu.dart'; // Assuming MainMenu is defined in mainMenu.dart
import 'package:a_sound/ColorsBG.dart'; // Assuming ColorsBg is defined in ColorsBG.dart

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ColorsBg.init(); // Initialize ColorsBg before running the app
  await Language.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MainMenu(),
        '/number': (context) => Number(),
        '/abc': (context) => Abc(),
        '/word': (context) => Word(),
        '/color': (context) => ColorP(),
      },
    );
  }
}
