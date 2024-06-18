import 'package:flutter/material.dart';
import 'package:a_sound/to_menu_next.dart';
import 'package:a_sound/footer.dart';
import 'package:flutter_tts/flutter_tts.dart';
import '../Language.dart';

import '../ColorsBG.dart';

class Number extends StatefulWidget {
  const Number({Key? key}) : super(key: key);

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
  final FlutterTts flutterTts = FlutterTts();

  speak(String text) async {
    await flutterTts.setLanguage(Language.getLanguage());
    await flutterTts.setPitch(1);
    if (text.isEmpty) {
      text = "Please press the number key";
    }
    await flutterTts.speak(text);
  }

  ColorsBg bg = new ColorsBg();
  String numbers = "0";
  bool multi = false;
  String forMult = "1N";
  Color foMultCol = Colors.white;
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
            padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 20.0),
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
                        numbers,
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
                        setState(() {
                          speak(numbers);
                        });
                      },
                      icon: Icon(
                        Icons.campaign_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 80.0,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (multi && numbers.length < 4) {
                                  numbers += "1";
                                } else if (!multi) {
                                  numbers = "1";
                                }
                              });
                            },
                            child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.black,
                                  ),
                                )),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (multi && numbers.length < 4) {
                                  numbers += "2";
                                } else if (!multi) {
                                  numbers = "2";
                                }
                              });
                            },
                            child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.black,
                                  ),
                                )),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (multi && numbers.length < 4) {
                                  numbers += "3";
                                } else if (!multi) {
                                  numbers = "3";
                                }
                              });
                            },
                            child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "3",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.black,
                                  ),
                                )),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (multi && numbers.length < 4) {
                                  numbers += "4";
                                } else if (!multi) {
                                  numbers = "4";
                                }
                              });
                            },
                            child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "4",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.black,
                                  ),
                                )),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (multi && numbers.length < 4) {
                                  numbers += "5";
                                } else if (!multi) {
                                  numbers = "5";
                                }
                              });
                            },
                            child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "5",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.black,
                                  ),
                                )),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (multi && numbers.length < 4) {
                                  numbers += "6";
                                } else if (!multi) {
                                  numbers = "6";
                                }
                              });
                            },
                            child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "6",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.black,
                                  ),
                                )),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (multi && numbers.length < 4) {
                                  numbers += "7";
                                } else if (!multi) {
                                  numbers = "7";
                                }
                                ;
                              });
                            },
                            child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "7",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.black,
                                  ),
                                )),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (multi && numbers.length < 4) {
                                  numbers += "8";
                                } else if (!multi) {
                                  numbers = "8";
                                }
                              });
                            },
                            child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "8",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.black,
                                  ),
                                )),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (multi && numbers.length < 4) {
                                  numbers += "9";
                                } else if (!multi) {
                                  numbers = "9";
                                }
                              });
                            },
                            child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "9",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.black,
                                  ),
                                )),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (numbers.length > 0) {
                                  numbers =
                                      numbers.substring(0, numbers.length - 1);
                                }
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(
                                Icons
                                    .backspace, // Use Icons.backspace for backspace icon
                                size: 40.0,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (multi && numbers.length < 4) {
                                  numbers += "0";
                                } else if (!multi) {
                                  numbers = "0";
                                }
                              });
                            },
                            child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "0",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.black,
                                  ),
                                )),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                multi = !multi;
                                if (multi) {
                                  forMult = "+1N";
                                  foMultCol = Colors.blueAccent;
                                } else {
                                  forMult = "1N";
                                  foMultCol = Colors.white;
                                }
                              });
                            },
                            child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    3.0, 5.0, 3.0, 5.0),
                                child: Text(
                                  forMult,
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.black,
                                  ),
                                )),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              backgroundColor: foMultCol,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
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
