import 'package:flutter/material.dart';
import 'ColorsBG.dart';
import 'main.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.5),
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              height: 40.0,
              width: 80.0,
              child: ElevatedButton(
                onPressed: () {
                  // ColorsBg b = new ColorsBg();
                  ColorsBg.setColor(Color(0xFFe93737));
                  main();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFe93737),
                  shape: RoundedRectangleBorder(
                    // Set the shape to a rounded rectangle
                    borderRadius: BorderRadius.circular(
                        3.0), // Adjust the radius as needed
                  ), // Set the background color here
                ),
                child: Text(""),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 40.0,
              width: 80.0,
              child: ElevatedButton(
                onPressed: () {
                  // ColorsBg b = new ColorsBg();
                  ColorsBg.setColor(Color(0xFF2ac198));
                  main();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Color(0xFF2ac198), // Set the background color here
                  shape: RoundedRectangleBorder(
                    // Set the shape to a rounded rectangle
                    borderRadius: BorderRadius.circular(
                        3.0), // Adjust the radius as needed
                  ),
                ),
                child: Text(""),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 40.0,
              width: 80.0,
              child: ElevatedButton(
                onPressed: () {
                  // ColorsBg b = new ColorsBg();
                  ColorsBg.setColor(Color(0xFF068cf8));
                  main();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Color(0xFF068cf8), // Set the background color here
                  shape: RoundedRectangleBorder(
                    // Set the shape to a rounded rectangle
                    borderRadius: BorderRadius.circular(
                        3.0), // Adjust the radius as needed
                  ),
                ),
                child: Text(""),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 40.0,
              width: 80.0,
              child: ElevatedButton(
                onPressed: () {
                  // ColorsBg b = new ColorsBg();
                  ColorsBg.setColor(Color(0xFFfd6b00));
                  main();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Color(0xFFfd6b00), // Set the background color here
                  shape: RoundedRectangleBorder(
                    // Set the shape to a rounded rectangle
                    borderRadius: BorderRadius.circular(
                        3.0), // Adjust the radius as needed
                  ),
                ),
                child: Text(""),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
