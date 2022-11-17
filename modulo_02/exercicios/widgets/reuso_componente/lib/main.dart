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
        Block(cor: Colors.green, height: 150, width: 250),
        Block(cor: Colors.yellow, height: 55, width: 55),
        Block(cor: Colors.blue, height: 100, width: 300),
        Block(
          cor: Colors.red,
          height: 20,
          width: 100,
        )
      ],
    ));
  }
}

class Block extends StatelessWidget {
  final Color cor;
  final double width;
  final double height;

  const Block(
      {super.key,
      required this.cor,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cor,
      width: width,
      height: height,
    );
  }
}
