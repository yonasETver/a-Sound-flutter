import 'package:a_sound/pages/abc.dart';
import 'package:a_sound/pages/color.dart';
import 'package:a_sound/pages/number.dart';
import 'package:a_sound/pages/word.dart';
import 'package:flutter/material.dart';
import 'ColorsBG.dart';
import 'top_menu.dart';
import 'footer.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  // ColorsBg bg = new ColorsBg();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: TopMenu(), // Use the CustomAppBar here
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bacground_image.png'),
                  fit: BoxFit.cover,
                ),
                color: Colors.red.withOpacity(
                    0.1), // Set the background color with transparency
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.5),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Number()),
                            );
                          },
                          child: Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  8.0, 90.0, 8.0, 90.0),
                              child: Image.asset("assets/number.png")),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            backgroundColor: ColorsBg.getColor(),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Abc()),
                            );
                          },
                          child: Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  8.0, 90.0, 8.0, 90.0),
                              child: Image.asset("assets/alpha.png")),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            backgroundColor: ColorsBg.getColor(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Word()),
                            );
                          },
                          child: Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  8.0, 90.0, 8.0, 90.0),
                              child: Image.asset("assets/word.png")),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            backgroundColor: ColorsBg.getColor(),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ColorP()),
                            );
                          },
                          child: Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  8.0, 90.0, 8.0, 90.0),
                              child: Image.asset("assets/color.png")),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            backgroundColor: ColorsBg.getColor(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: Footer(),
      ),
    );
  }
}
