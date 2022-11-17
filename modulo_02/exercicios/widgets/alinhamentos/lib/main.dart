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
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Block(cor: Colors.green),
            Block(cor: Colors.yellow),
            Block(cor: Colors.red)
          ]),
    );
  }
}

class Block extends StatelessWidget {
  final Color cor;
  const Block({super.key, required this.cor});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cor,
      width: 100,
      height: 100,
    );
  }
}
