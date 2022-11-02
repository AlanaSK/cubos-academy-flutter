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
      home: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.red, width: 5),
              borderRadius: BorderRadius.circular(60),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  offset: Offset(40, -10),
                  spreadRadius: 3,
                  blurRadius: 3,
                ),
              ]),
        ),
      ),
    );
  }
}
