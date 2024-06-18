import 'package:a_sound/pages/abc.dart';
import 'package:a_sound/pages/color.dart';
import 'package:a_sound/pages/number.dart';
import 'package:a_sound/pages/word.dart';
import 'package:flutter/material.dart';
import 'ColorsBG.dart';
import 'Language.dart';
// import './main.dart';

// ignore: must_be_immutable
class TopMenu extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(56.0);

  ColorsBg bg = new ColorsBg();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsBg.getColor(),
      leading: PopupMenuButton<String>(
        offset: Offset(-40, 55),
        onSelected: (String result) {
          // Handle submenu item selection
          //print('Selected: $result');
          if (result == "ABC") {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Abc()));
          } else if (result == "123") {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Number()));
          } else if (result == "W") {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Word()));
          } else if (result == "COL") {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ColorP()));
          } else if (result == "AMH") {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ColorP()));
          }
        },
        itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
          PopupMenuItem<String>(
            value: '123',
            child: Row(
              children: [
                Image.asset(
                  "assets/number.png",
                  width: 24.0,
                  height: 24.0,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text("123"),
              ],
            ),
          ),
          PopupMenuItem<String>(
            value: 'ABC',
            child: Row(
              children: [
                Image.asset(
                  "assets/alpha.png",
                  width: 24.0,
                  height: 24.0,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text("ABC")
              ],
            ),
          ),
          PopupMenuItem(
              value: "W",
              child: Row(
                children: [
                  Image.asset(
                    "assets/word.png",
                    width: 24.0,
                    height: 24.0,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text("WOR")
                ],
              )),
          PopupMenuItem(
              value: "COL",
              child: Row(
                children: [
                  Image.asset(
                    "assets/color.png",
                    width: 24.0,
                    height: 24.0,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text("COL")
                ],
              ))
        ],
        child: Icon(
          Icons.menu,
          color: Colors.black,
        ),
      ),
      actions: [
        Expanded(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(right: 20.0, left: 60.0),
              child: GestureDetector(
                onTap: () {},
                child: Image.asset("assets/applogo.png"),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: PopupMenuButton<String>(
            offset: Offset(20, 40),
            onSelected: (String result) async{
              // Handle submenu item selection
              print('Selected: $result');
  
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'LNG',
                child: Row(
                  children: [
                    Text("LNG"),
                    PopupMenuButton<String>(
                       offset: Offset(30, 0),
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      onCanceled: () {},
                      onSelected: (String  result) async{
                        if (result == "UK") {
                          await Language.setLanguage("en-GB");
                          // main();
                        } else if (result == "US") {
                          await Language.setLanguage("en-US");
                          // main();
                        } else if (result == "AMH") {
                          await Language.setLanguage(
                              "am-ET"); // Set the appropriate language code for AMH
                          // main();
                        }
                      } ,
                      itemBuilder: (BuildContext context) =>
                          <PopupMenuEntry<String>>[
                        PopupMenuItem<String>(value: 'UK', child: Text("UK")),
                        PopupMenuItem<String>(value: 'US', child: Text("US")),
                        PopupMenuItem<String>(value: 'AMH', child: Text("AMH")),
                      ],
                    )
                  ],
                ),
              ),
            ],
            child: Icon(
              Icons.settings,
              color: Colors.black,
            ),
          ),
        ),
      ],

      // Add any additional customization or actions here
    );
  }
}
