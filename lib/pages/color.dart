import 'package:flutter/material.dart';
import 'package:a_sound/to_menu_next.dart';
import 'package:a_sound/footer.dart';
import 'package:flutter_tts/flutter_tts.dart';

import '../ColorsBG.dart';
import '../Language.dart';

class ColorP extends StatefulWidget {
  const ColorP({Key? key}) : super(key: key);

  @override
  State<ColorP> createState() => _ColorState();
}

class _ColorState extends State<ColorP> {
  final FlutterTts flutterTts = FlutterTts();
  final TextEditingController textEditingController = TextEditingController();
  TextEditingController _textEditingController = TextEditingController();
  TextStyle _textFieldTextStyle = TextStyle(fontSize: 16);
  String colorName = "";
  int colorHex = 0;

  setColor() {
    _textEditingController.text = colorName;

    setState(() {
      _textFieldTextStyle = TextStyle(
        fontSize: 47,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        color: Color(colorHex),
      );
    });
  }

  speak(String text) async {
    await flutterTts.setLanguage(Language.getLanguage());
    await flutterTts.setPitch(1);
    await flutterTts.speak(text);
  }

  ColorsBg bg = new ColorsBg();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopMenuNext(),
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
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
              child: Column(
                children: [
                  Container(
                    height: 90.0,
                    width: 240.0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
                      child: TextField(
                        enabled: false,
                        controller: _textEditingController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Press your color',
                          filled: true,
                          fillColor: Colors.grey[200],
                        ),
                        style: _textFieldTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorsBg.getColor(),
                      ),
                      child: IconButton(
                        onPressed: () {
                          speak(colorName);
                        },
                        icon: Icon(
                          Icons.campaign_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 83.0,
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: Colors.grey, width: 2.0),
                                      top: BorderSide(
                                          color: Colors.grey, width: 2.0))),
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Container(
                                        width: 35.0,
                                        height: 35.0,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            colorName = "Red";
                                            colorHex = 0xFFed3833;
                                            setColor();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(
                                                0xFFed3833), // Set the background color here
                                          ),
                                          child: Text(""),
                                        ),
                                      ),
                                    ),
                                    Text("Red")
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                            Container(
                              width: 83.0,
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: Colors.grey, width: 2.0),
                                      top: BorderSide(
                                          color: Colors.grey, width: 2.0))),
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Container(
                                        width: 35.0,
                                        height: 35.0,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            colorName = "Green";
                                            colorHex = 0xFF4da957;
                                            setColor();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(
                                                0xFF4da957), // Set the background color here
                                          ),
                                          child: Text(""),
                                        ),
                                      ),
                                    ),
                                    Text("Green")
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                            Container(
                              width: 83.0,
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: Colors.grey, width: 2.0),
                                      top: BorderSide(
                                          color: Colors.grey, width: 2.0))),
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Container(
                                        width: 35.0,
                                        height: 35.0,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            colorName = "Blue";
                                            colorHex = 0xFF42abdf;
                                            setColor();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(
                                                0xFF42abdf), // Set the background color here
                                          ),
                                          child: Text(""),
                                        ),
                                      ),
                                    ),
                                    Text("Blue")
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                            Container(
                              width: 83.0,
                              decoration: BoxDecoration(
                                  border: Border(
                                      top: BorderSide(
                                          color: Colors.grey, width: 2.0))),
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Container(
                                        width: 35.0,
                                        height: 35.0,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            colorName = "Indigo";
                                            colorHex = 0xFF3a4b90;
                                            setColor();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(
                                                0xFF3a4b90), // Set the background color here
                                          ),
                                          child: Text(""),
                                        ),
                                      ),
                                    ),
                                    Text("Indigo")
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 83.0,
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: Colors.grey, width: 2.0))),
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Container(
                                        width: 35.0,
                                        height: 35.0,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            colorName = "Orange";
                                            colorHex = 0xFFf3b743;
                                            setColor();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(
                                                0xFFf3b743), // Set the background color here
                                          ),
                                          child: Text(""),
                                        ),
                                      ),
                                    ),
                                    Text("Orange")
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                            Container(
                              width: 83.0,
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: Colors.grey, width: 2.0))),
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Container(
                                        width: 35.0,
                                        height: 35.0,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            colorName = "Yellow";
                                            colorHex = 0xFFfee84e;
                                            setColor();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(
                                                0xFFfee84e), // Set the background color here
                                          ),
                                          child: Text(""),
                                        ),
                                      ),
                                    ),
                                    Text("Yellow")
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                            Container(
                              width: 83.0,
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: Colors.grey, width: 2.0))),
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Container(
                                        width: 35.0,
                                        height: 35.0,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            colorName = "Violet";
                                            colorHex = 0xFF655091;
                                            setColor();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(
                                                0xFF655091), // Set the background color here
                                          ),
                                          child: Text(""),
                                        ),
                                      ),
                                    ),
                                    Text("Violet")
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                            Container(
                              width: 83.0,
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Container(
                                        width: 35.0,
                                        height: 35.0,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            colorName = "Gold";
                                            colorHex = 0xFFffd701;
                                            setColor();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(
                                                0xFFffd701), // Set the background color here
                                          ),
                                          child: Text(""),
                                        ),
                                      ),
                                    ),
                                    Text("Gold")
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 83.0,
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: Colors.grey, width: 2.0))),
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Container(
                                        width: 35.0,
                                        height: 35.0,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            colorName = "Maroon";
                                            colorHex = 0xFFa44062;
                                            setColor();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(
                                                0xFFa44062), // Set the background color here
                                          ),
                                          child: Text(""),
                                        ),
                                      ),
                                    ),
                                    Text("Maroon")
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                            Container(
                              width: 83.0,
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: Colors.grey, width: 2.0))),
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Container(
                                        width: 35.0,
                                        height: 35.0,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            colorName = "Black";
                                            colorHex = 0xFF000000;
                                            setColor();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(
                                                0xFF000000), // Set the background color here
                                          ),
                                          child: Text(""),
                                        ),
                                      ),
                                    ),
                                    Text("Black")
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                            Container(
                              width: 83.0,
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: Colors.grey, width: 2.0))),
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Container(
                                        width: 35.0,
                                        height: 35.0,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            colorName = "Olive";
                                            colorHex = 0xFF817c24;
                                            setColor();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(
                                                0xFF817c24), // Set the background color here
                                          ),
                                          child: Text(""),
                                        ),
                                      ),
                                    ),
                                    Text("Olive")
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                            Container(
                              width: 83.0,
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Container(
                                        width: 35.0,
                                        height: 35.0,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            colorName = "Cyan";
                                            colorHex = 0xFF6dfbfb;
                                            setColor();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(
                                                0xFF6dfbfb), // Set the background color here
                                          ),
                                          child: Text(""),
                                        ),
                                      ),
                                    ),
                                    Text("Cyan")
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 83.0,
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: Colors.grey, width: 2.0))),
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Container(
                                        width: 35.0,
                                        height: 35.0,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            colorName = "Pink";
                                            colorHex = 0xFFee79c3;
                                            setColor();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(
                                                0xFFee79c3), // Set the background color here
                                          ),
                                          child: Text(""),
                                        ),
                                      ),
                                    ),
                                    Text("Pink")
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                            Container(
                              width: 83.0,
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: Colors.grey, width: 2.0))),
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Container(
                                        width: 35.0,
                                        height: 35.0,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            colorName = "Magenta";
                                            colorHex = 0xFFeb58f9;
                                            setColor();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(
                                                0xFFeb58f9), // Set the background color here
                                          ),
                                          child: Text(""),
                                        ),
                                      ),
                                    ),
                                    Text("Magenta")
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                            Container(
                              width: 83.0,
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: Colors.grey, width: 2.0))),
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Container(
                                        width: 35.0,
                                        height: 35.0,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // speak("Tan");
                                            colorName = "Tan";
                                            colorHex = 0xFFfadabe;
                                            setColor();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(
                                                0xFFfadabe), // Set the background color here
                                          ),
                                          child: Text(""),
                                        ),
                                      ),
                                    ),
                                    Text("Tan")
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                            Container(
                              width: 83.0,
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Container(
                                        width: 35.0,
                                        height: 35.0,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            colorName = "Teal";
                                            colorHex = 0xFF337e7e;
                                            setColor();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(
                                                0xFF337e7e), // Set the background color here
                                          ),
                                          child: Text(""),
                                        ),
                                      ),
                                    ),
                                    Text("Teal")
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 83.0,
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: Colors.grey, width: 2.0))),
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Container(
                                        width: 35.0,
                                        height: 35.0,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            colorName = "Aqua";
                                            colorHex = 0xFF03f4ce;
                                            setColor();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(
                                                0xFF03f4ce), // Set the background color here
                                          ),
                                          child: Text(""),
                                        ),
                                      ),
                                    ),
                                    Text("Aqua")
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                            Container(
                              width: 83.0,
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: Colors.grey, width: 2.0))),
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Container(
                                        width: 35.0,
                                        height: 35.0,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            colorName = "Peach";
                                            colorHex = 0xFFffab91;
                                            setColor();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(
                                                0xFFffab91), // Set the background color here
                                          ),
                                          child: Text(""),
                                        ),
                                      ),
                                    ),
                                    Text("Peach")
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                            Container(
                              width: 83.0,
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: Colors.grey, width: 2.0))),
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Container(
                                        width: 35.0,
                                        height: 35.0,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // speak("White");
                                            colorName = "White";
                                            colorHex = 0xFFffffff;
                                            setColor();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(
                                                0xFFffffff), // Set the background color here
                                          ),
                                          child: Text(""),
                                        ),
                                      ),
                                    ),
                                    Text("White")
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                            Container(
                              width: 83.0,
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Container(
                                        width: 35.0,
                                        height: 35.0,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            colorName = "Amber";
                                            colorHex = 0xFFfdc400;
                                            setColor();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(
                                                0xFFfdc400), // Set the background color here
                                          ),
                                          child: Text(""),
                                        ),
                                      ),
                                    ),
                                    Text("Amber")
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 83.0,
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: Colors.grey, width: 2.0),
                                      bottom: BorderSide(
                                          color: Colors.grey, width: 2.0))),
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Container(
                                        width: 35.0,
                                        height: 35.0,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            colorName = "Gray";
                                            colorHex = 0xFFa7a7a7;
                                            setColor();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(
                                                0xFFa7a7a7), // Set the background color here
                                          ),
                                          child: Text(""),
                                        ),
                                      ),
                                    ),
                                    Text("Gray")
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                            Container(
                              width: 83.0,
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: Colors.grey, width: 2.0),
                                      bottom: BorderSide(
                                          color: Colors.grey, width: 2.0))),
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Container(
                                        width: 35.0,
                                        height: 35.0,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            colorName = "Brown";
                                            colorHex = 0xFF795548;
                                            setColor();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(
                                                0xFF795548), // Set the background color here
                                          ),
                                          child: Text(""),
                                        ),
                                      ),
                                    ),
                                    Text("Brown")
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                            Container(
                              width: 83.0,
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: Colors.grey, width: 2.0),
                                      bottom: BorderSide(
                                          color: Colors.grey, width: 2.0))),
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Container(
                                        width: 35.0,
                                        height: 35.0,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            colorName = "Lime";
                                            colorHex = 0xFF77ff03;
                                            setColor();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(
                                                0xFF77ff03), // Set the background color here
                                          ),
                                          child: Text(""),
                                        ),
                                      ),
                                    ),
                                    Text("Lime")
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                            Container(
                              width: 83.0,
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey, width: 2.0))),
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Container(
                                        width: 35.0,
                                        height: 35.0,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            colorName = "Blue gray";
                                            colorHex = 0xFF5f7d8c;
                                            setColor();
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(
                                                0xFF5f7d8c), // Set the background color here
                                          ),
                                          child: Text(""),
                                        ),
                                      ),
                                    ),
                                    Text("Blue gray")
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
