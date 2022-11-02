import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Container(
            color: Colors.red,
            height: 110,
            width: 50,
          ),
          Container(
            color: Colors.blue,
            height: 50,
            width: 150,
            margin: EdgeInsets.all(30),
          ),
          // Container(
          //   color: Colors.white,
          //   height: 100,
          //   width: 300,
          // ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.white,
                  width: 100,
                  height: 100,
                ),
                Positioned(
                  top: 50,
                  left: 40,
                  child: Container(
                    color: Colors.red,
                    height: 100,
                    width: 100,
                  ),
                ),
                Center(
                  child: Container(
                    color: Colors.yellow,
                    height: 100,
                    width: 100,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: Colors.pink,
                    height: 100,
                    width: 100,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
