import 'package:flutter/material.dart';
import 'package:a_sound/to_menu_next.dart';
import 'package:a_sound/footer.dart';
import 'package:flutter_tts/flutter_tts.dart';

import '../ColorsBG.dart';
import '../Language.dart';

class Abc extends StatefulWidget {
  const Abc({Key? key}) : super(key: key);

  @override
  State<Abc> createState() => _AbcState();
}

class _AbcState extends State<Abc> {
  final FlutterTts flutterTts = FlutterTts();
  ColorsBg bg = new ColorsBg();
  String alpha = "a";
  bool lang = false;
  Color barColor = Colors.white;
  Color lanColor = Colors.black;
  String langStr = "ENG";
  double forTop = 135.0;
  List<String> alphaArr = [
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o",
    "p",
    "q",
    "r",
    "s",
    "t",
    "u",
    "v",
    "w",
    "x",
    "y",
    "z"
  ];
  bool captial = false;
  List<String> amharicLett = ["", "", "", "", "", "", ""];

    speak(String text) async {
    await flutterTts.setLanguage(Language.getLanguage());
    await flutterTts.setPitch(1);
    if (text.isEmpty) {
      text = "Please press the alpha key";
    }
    await flutterTts.speak(text);
  }

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
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 30.0, 2.0, 5.0),
            child: Column(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorsBg
                          .getColor(), // Set your desired background color here
                      borderRadius: BorderRadius.circular(
                          10.0), // Optional: Add border radius
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                      child: Text(
                        alpha,
                        style: TextStyle(
                          fontSize: 100.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorsBg.getColor(),
                    ),
                    child: IconButton(
                      onPressed: () {
                        speak(alpha);
                      },
                      icon: Icon(
                        Icons.campaign_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: forTop,
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    color: ColorsBg.getColor(),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                          child: Visibility(
                            visible: !lang,
                            child: Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = alphaArr[0];
                                      });
                                    },
                                    child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          alphaArr[0],
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.black,
                                          ),
                                        )),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2.0),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = alphaArr[1];
                                      });
                                    },
                                    child: Text(
                                      alphaArr[1],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2.0),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = alphaArr[2];
                                      });
                                    },
                                    child: Text(
                                      alphaArr[2],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = alphaArr[3];
                                      });
                                    },
                                    child: Text(
                                      alphaArr[3],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = alphaArr[5];
                                      });
                                    },
                                    child: Text(
                                      alphaArr[5],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = alphaArr[6];
                                      });
                                    },
                                    child: Text(
                                      alphaArr[6],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = alphaArr[7];
                                      });
                                    },
                                    child: Text(
                                      alphaArr[7],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = alphaArr[8];
                                      });
                                    },
                                    child: Text(
                                      alphaArr[8],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = alphaArr[9];
                                      });
                                    },
                                    child: Text(
                                      alphaArr[9],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = alphaArr[10];
                                      });
                                    },
                                    child: Text(
                                      alphaArr[10],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 12.0, right: 12.0),
                          child: Visibility(
                            visible: !lang,
                            child: Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = alphaArr[11];
                                      });
                                    },
                                    child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          alphaArr[11],
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.black,
                                          ),
                                        )),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2.0),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = alphaArr[12];
                                      });
                                    },
                                    child: Text(
                                      alphaArr[12],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2.0),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = alphaArr[13];
                                      });
                                    },
                                    child: Text(
                                      alphaArr[13],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = alphaArr[14];
                                      });
                                    },
                                    child: Text(
                                      alphaArr[14],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = alphaArr[15];
                                      });
                                    },
                                    child: Text(
                                      alphaArr[15],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = alphaArr[16];
                                      });
                                    },
                                    child: Text(
                                      alphaArr[16],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = alphaArr[17];
                                      });
                                    },
                                    child: Text(
                                      alphaArr[17],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = alphaArr[18];
                                      });
                                    },
                                    child: Text(
                                      alphaArr[18],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = alphaArr[19];
                                      });
                                    },
                                    child: Text(
                                      alphaArr[19],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 22.0, right: 22.0),
                          child: Visibility(
                            visible: !lang,
                            child: Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        captial = !captial;
                                        if (captial) {
                                          for (int i = 0;
                                              i < alphaArr.length;
                                              i++) {
                                            alphaArr[i] =
                                                alphaArr[i].toUpperCase();
                                          }
                                        } else {
                                          for (int i = 0;
                                              i < alphaArr.length;
                                              i++) {
                                            alphaArr[i] =
                                                alphaArr[i].toLowerCase();
                                          }
                                        }
                                      });
                                    },
                                    child: Icon(
                                      Icons.arrow_upward_outlined,
                                      color: Colors.grey[700],
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2.0),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = alphaArr[20];
                                      });
                                    },
                                    child: Text(
                                      alphaArr[20],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2.0),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = alphaArr[21];
                                      });
                                    },
                                    child: Text(
                                      alphaArr[21],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = alphaArr[22];
                                      });
                                    },
                                    child: Text(
                                      alphaArr[22],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = alphaArr[23];
                                      });
                                    },
                                    child: Text(
                                      alphaArr[23],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = alphaArr[24];
                                      });
                                    },
                                    child: Text(
                                      alphaArr[24],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alphaArr[24];
                                      });
                                    },
                                    child: Text(
                                      alphaArr[25],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = alphaArr[25];
                                      });
                                    },
                                    child: Text(
                                      alphaArr[25],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 22.0, right: 22.0),
                          child: Visibility(
                            visible: lang,
                            child: Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = amharicLett[0];
                                      });
                                    },
                                    child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          amharicLett[0],
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.white,
                                          ),
                                        )),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.black,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2.0),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = amharicLett[1];
                                      });
                                    },
                                    child: Text(
                                      amharicLett[1],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.black,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2.0),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = amharicLett[2];
                                      });
                                    },
                                    child: Text(
                                      amharicLett[2],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.black,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = amharicLett[3];
                                      });
                                    },
                                    child: Text(
                                      amharicLett[3],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.black,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = amharicLett[4];
                                      });
                                    },
                                    child: Text(
                                      amharicLett[4],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.black,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = amharicLett[5];
                                      });
                                    },
                                    child: Text(
                                      amharicLett[5],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.black,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = amharicLett[6];
                                      });
                                    },
                                    child: Text(
                                      amharicLett[6],
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.black,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                          child: Visibility(
                            visible: lang,
                            child: Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ሀ";
                                        amharicLett[0] = "ሀ";
                                        amharicLett[1] = "ሁ";
                                        amharicLett[2] = "ሂ";
                                        amharicLett[3] = "ሂ";
                                        amharicLett[4] = "ሄ";
                                        amharicLett[5] = "ህ";
                                        amharicLett[6] = "ሆ";
                                      });
                                    },
                                    child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          "ሀ",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.black,
                                          ),
                                        )),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2.0),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ለ";
                                        amharicLett[0] = "ለ";
                                        amharicLett[1] = "ሉ";
                                        amharicLett[2] = "ሊ";
                                        amharicLett[3] = "ላ";
                                        amharicLett[4] = "ሌ";
                                        amharicLett[5] = "ል";
                                        amharicLett[6] = "ሎ";
                                      });
                                    },
                                    child: Text(
                                      "ለ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2.0),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ሐ";
                                        amharicLett[0] = "ሐ";
                                        amharicLett[1] = "ሑ";
                                        amharicLett[2] = "ሒ";
                                        amharicLett[3] = "ሓ";
                                        amharicLett[4] = "ሔ";
                                        amharicLett[5] = "ሕ";
                                        amharicLett[6] = "ሖ";
                                      });
                                    },
                                    child: Text(
                                      "ሐ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "መ";
                                        amharicLett[0] = "መ";
                                        amharicLett[1] = "ሙ";
                                        amharicLett[2] = "ሚ";
                                        amharicLett[3] = "ማ";
                                        amharicLett[4] = "ሜ";
                                        amharicLett[5] = "ም";
                                        amharicLett[6] = "ሞ";
                                      });
                                    },
                                    child: Text(
                                      "መ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ሠ";
                                        amharicLett[0] = "ሠ";
                                        amharicLett[1] = "ሡ";
                                        amharicLett[2] = "ሢ";
                                        amharicLett[3] = "ሣ";
                                        amharicLett[4] = "ሤ";
                                        amharicLett[5] = "ሥ";
                                        amharicLett[6] = "ሦ";
                                      });
                                    },
                                    child: Text(
                                      "ሠ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ረ";
                                        amharicLett[0] = "ረ";
                                        amharicLett[1] = "ሩ";
                                        amharicLett[2] = "ሪ";
                                        amharicLett[3] = "ራ";
                                        amharicLett[4] = "ሬ";
                                        amharicLett[5] = "ር";
                                        amharicLett[6] = "ሮ";
                                      });
                                    },
                                    child: Text(
                                      "ረ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ሰ";
                                        amharicLett[0] = "ሰ";
                                        amharicLett[1] = "ሱ";
                                        amharicLett[2] = "ሲ";
                                        amharicLett[3] = "ሳ";
                                        amharicLett[4] = "ሴ";
                                        amharicLett[5] = "ስ";
                                        amharicLett[6] = "ሶ";
                                      });
                                    },
                                    child: Text(
                                      "ሰ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ሸ";
                                        amharicLett[0] = "ሸ";
                                        amharicLett[1] = "ሹ";
                                        amharicLett[2] = "ሺ";
                                        amharicLett[3] = "ሻ";
                                        amharicLett[4] = "ሼ";
                                        amharicLett[5] = "ሽ";
                                        amharicLett[6] = "ሾ";
                                      });
                                    },
                                    child: Text(
                                      "ሸ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ቀ";
                                        amharicLett[0] = "ቀ";
                                        amharicLett[1] = "ቁ";
                                        amharicLett[2] = "ቂ";
                                        amharicLett[3] = "ቃ";
                                        amharicLett[4] = "ቄ";
                                        amharicLett[5] = "ቅ";
                                        amharicLett[6] = "ቆ";
                                      });
                                    },
                                    child: Text(
                                      "ቀ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "በ";
                                        amharicLett[0] = "በ";
                                        amharicLett[1] = "ቡ";
                                        amharicLett[2] = "ቢ";
                                        amharicLett[3] = "ባ";
                                        amharicLett[4] = "ቤ";
                                        amharicLett[5] = "ብ";
                                        amharicLett[6] = "ቦ";
                                      });
                                    },
                                    child: Text(
                                      "በ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 22.0, right: 22.0),
                          child: Visibility(
                            visible: lang,
                            child: Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ቨ";
                                        amharicLett[0] = "ቨ";
                                        amharicLett[1] = "ቩ";
                                        amharicLett[2] = "ቪ";
                                        amharicLett[3] = "ቫ";
                                        amharicLett[4] = "ቬ";
                                        amharicLett[5] = "ቭ";
                                        amharicLett[6] = "ቮ";
                                      });
                                    },
                                    child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          "ቨ",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.black,
                                          ),
                                        )),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2.0),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ተ";
                                        amharicLett[0] = "ተ";
                                        amharicLett[1] = "ቱ";
                                        amharicLett[2] = "ቲ";
                                        amharicLett[3] = "ታ";
                                        amharicLett[4] = "ቴ";
                                        amharicLett[5] = "ት";
                                        amharicLett[6] = "ቶ";
                                      });
                                    },
                                    child: Text(
                                      "ተ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2.0),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ቸ";
                                        amharicLett[0] = "ቸ";
                                        amharicLett[1] = "ቹ";
                                        amharicLett[2] = "ቺ";
                                        amharicLett[3] = "ቻ";
                                        amharicLett[4] = "ቼ";
                                        amharicLett[5] = "ች";
                                        amharicLett[6] = "ቾ";
                                      });
                                    },
                                    child: Text(
                                      "ቸ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ኅ";
                                        amharicLett[0] = "ኀ";
                                        amharicLett[1] = "ኁ";
                                        amharicLett[2] = "ኂ";
                                        amharicLett[3] = "ኃ";
                                        amharicLett[4] = "ኄ";
                                        amharicLett[5] = "ኅ";
                                        amharicLett[6] = "ኆ";
                                      });
                                    },
                                    child: Text(
                                      "ኅ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ነ";
                                        amharicLett[0] = "ነ";
                                        amharicLett[1] = "ኑ";
                                        amharicLett[2] = "ኒ";
                                        amharicLett[3] = "ና";
                                        amharicLett[4] = "ኔ";
                                        amharicLett[5] = "ን";
                                        amharicLett[6] = "ኖ";
                                      });
                                    },
                                    child: Text(
                                      "ነ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ኘ";
                                        amharicLett[0] = "ኘ";
                                        amharicLett[1] = "ኙ";
                                        amharicLett[2] = "ኚ";
                                        amharicLett[3] = "ኛ";
                                        amharicLett[4] = "ኜ";
                                        amharicLett[5] = "ኝ";
                                        amharicLett[6] = "ኞ";
                                      });
                                    },
                                    child: Text(
                                      "ኘ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "አ";
                                        amharicLett[0] = "አ";
                                        amharicLett[1] = "ኡ";
                                        amharicLett[2] = "ኢ";
                                        amharicLett[3] = "ኣ";
                                        amharicLett[4] = "ኤ";
                                        amharicLett[5] = "እ";
                                        amharicLett[6] = "ኦ";
                                      });
                                    },
                                    child: Text(
                                      "አ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ከ";
                                        amharicLett[0] = "ከ";
                                        amharicLett[1] = "ኩ";
                                        amharicLett[2] = "ኪ";
                                        amharicLett[3] = "ካ";
                                        amharicLett[4] = "ኬ";
                                        amharicLett[5] = "ክ";
                                        amharicLett[6] = "ኮ";
                                      });
                                    },
                                    child: Text(
                                      "ከ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ኸ";
                                        amharicLett[0] = "ኸ";
                                        amharicLett[1] = "ኹ";
                                        amharicLett[2] = "ኺ";
                                        amharicLett[3] = "ኻ";
                                        amharicLett[4] = "ኼ";
                                        amharicLett[5] = "ኽ";
                                        amharicLett[6] = "ኾ";
                                      });
                                    },
                                    child: Text(
                                      "ኸ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 32.0, right: 32.0),
                          child: Visibility(
                            visible: lang,
                            child: Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ወ";
                                        amharicLett[0] = "ወ";
                                        amharicLett[1] = "ዉ";
                                        amharicLett[2] = "ዊ";
                                        amharicLett[3] = "ዋ";
                                        amharicLett[4] = "ዌ";
                                        amharicLett[5] = "ው";
                                        amharicLett[6] = "ዎ";
                                      });
                                    },
                                    child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          "ወ",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.black,
                                          ),
                                        )),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2.0),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ዐ";
                                        amharicLett[0] = "ዐ";
                                        amharicLett[1] = "ዑ";
                                        amharicLett[2] = "ዒ";
                                        amharicLett[3] = "ዓ";
                                        amharicLett[4] = "ዔ";
                                        amharicLett[5] = "ዕ";
                                        amharicLett[6] = "ዖ";
                                      });
                                    },
                                    child: Text(
                                      "ዐ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2.0),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ዘ";
                                        amharicLett[0] = "ዘ";
                                        amharicLett[1] = "ዙ";
                                        amharicLett[2] = "ዚ";
                                        amharicLett[3] = "ዛ";
                                        amharicLett[4] = "ዜ";
                                        amharicLett[5] = "ዝ";
                                        amharicLett[6] = "ዞ";
                                      });
                                    },
                                    child: Text(
                                      "ዘ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ዠ";
                                        amharicLett[0] = "ዠ";
                                        amharicLett[1] = "ዡ";
                                        amharicLett[2] = "ዢ";
                                        amharicLett[3] = "ዣ";
                                        amharicLett[4] = "ዤ";
                                        amharicLett[5] = "ዥ";
                                        amharicLett[6] = "ዦ";
                                      });
                                    },
                                    child: Text(
                                      "ዠ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "የ";
                                        amharicLett[0] = "የ";
                                        amharicLett[1] = "ዩ";
                                        amharicLett[2] = "ዪ";
                                        amharicLett[3] = "ያ";
                                        amharicLett[4] = "ዬ";
                                        amharicLett[5] = "ይ";
                                        amharicLett[6] = "ዮ";
                                      });
                                    },
                                    child: Text(
                                      "የ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ደ";
                                        amharicLett[0] = "ደ";
                                        amharicLett[1] = "ዱ";
                                        amharicLett[2] = "ዲ";
                                        amharicLett[3] = "ዳ";
                                        amharicLett[4] = "ዴ";
                                        amharicLett[5] = "ድ";
                                        amharicLett[6] = "ዶ";
                                      });
                                    },
                                    child: Text(
                                      "ደ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ጀ";
                                        amharicLett[0] = "ጀ";
                                        amharicLett[1] = "ጁ";
                                        amharicLett[2] = "ጂ";
                                        amharicLett[3] = "ጃ";
                                        amharicLett[4] = "ጄ";
                                        amharicLett[5] = "ጅ";
                                        amharicLett[6] = "ጆ";
                                      });
                                    },
                                    child: Text(
                                      "ጀ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ገ";
                                        amharicLett[0] = "ገ";
                                        amharicLett[1] = "ጉ";
                                        amharicLett[2] = "ጊ";
                                        amharicLett[3] = "ጋ";
                                        amharicLett[4] = "ጌ";
                                        amharicLett[5] = "ግ";
                                        amharicLett[6] = "ጎ";
                                      });
                                    },
                                    child: Text(
                                      "ገ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ጠ";
                                        amharicLett[0] = "ጠ";
                                        amharicLett[1] = "ጡ";
                                        amharicLett[2] = "ጢ";
                                        amharicLett[3] = "ጣ";
                                        amharicLett[4] = "ጤ";
                                        amharicLett[5] = "ጥ";
                                        amharicLett[6] = "ጦ";
                                      });
                                    },
                                    child: Text(
                                      "ጠ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 52.0, right: 52.0),
                          child: Visibility(
                            visible: lang,
                            child: Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ጨ";
                                        amharicLett[0] = "ጨ";
                                        amharicLett[1] = "ጩ";
                                        amharicLett[2] = "ጪ";
                                        amharicLett[3] = "ጫ";
                                        amharicLett[4] = "ጬ";
                                        amharicLett[5] = "ጭ";
                                        amharicLett[6] = "ጮ";
                                      });
                                    },
                                    child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          "ጨ",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.black,
                                          ),
                                        )),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2.0),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ጰ";
                                        amharicLett[0] = "ጰ";
                                        amharicLett[1] = "ጱ";
                                        amharicLett[2] = "ጲ";
                                        amharicLett[3] = "ጳ";
                                        amharicLett[4] = "ጴ";
                                        amharicLett[5] = "ጵ";
                                        amharicLett[6] = "ጶ";
                                      });
                                    },
                                    child: Text(
                                      "ጰ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2.0),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ጸ";
                                        amharicLett[0] = "ጸ";
                                        amharicLett[1] = "ጹ";
                                        amharicLett[2] = "ጺ";
                                        amharicLett[3] = "ጻ";
                                        amharicLett[4] = "ጼ";
                                        amharicLett[5] = "ጽ";
                                        amharicLett[6] = "ጾ";
                                      });
                                    },
                                    child: Text(
                                      "ጸ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ፀ";
                                        amharicLett[0] = "ፀ";
                                        amharicLett[1] = "ፁ";
                                        amharicLett[2] = "ፂ";
                                        amharicLett[3] = "ፃ";
                                        amharicLett[4] = "ፄ";
                                        amharicLett[5] = "ፅ";
                                        amharicLett[6] = "ፆ";
                                      });
                                    },
                                    child: Text(
                                      "ፀ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ፈ";
                                        amharicLett[0] = "ፈ";
                                        amharicLett[1] = "ፉ";
                                        amharicLett[2] = "ፊ";
                                        amharicLett[3] = "ፋ";
                                        amharicLett[4] = "ፌ";
                                        amharicLett[5] = "ፍ";
                                        amharicLett[6] = "ፎ";
                                      });
                                    },
                                    child: Text(
                                      "ፈ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        alpha = "ፐ";
                                        amharicLett[0] = "ፐ";
                                        amharicLett[1] = "ፑ";
                                        amharicLett[2] = "ፒ";
                                        amharicLett[3] = "ፓ";
                                        amharicLett[4] = "ፔ";
                                        amharicLett[5] = "ፕ";
                                        amharicLett[6] = "ፖ";
                                      });
                                    },
                                    child: Text(
                                      "ፐ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      lang = !lang;
                                      if (lang) {
                                        barColor = Colors.blue.shade900;
                                        langStr = "AMH";
                                        lanColor = Colors.white;
                                        forTop = 40.0;
                                      } else {
                                        barColor = Colors.white;
                                        langStr = "ENG";
                                        lanColor = Colors.black;
                                        forTop = 135.0;
                                      }
                                    });
                                  },
                                  child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(
                                        langStr,
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          color: lanColor,
                                        ),
                                      )),
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    backgroundColor: barColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
