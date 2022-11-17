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
      home: Column(children: [
        Image.network(
            'https://img.itdg.com.br/tdg/images/recipes/000/003/468/359047/359047_original.jpg?mode=crop&width=710&height=400'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Block(cor: Colors.green),
            Block(cor: Colors.red),
            Block(cor: Colors.blue),
          ],
        )
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
