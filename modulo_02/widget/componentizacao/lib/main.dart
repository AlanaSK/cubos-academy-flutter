import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(children: [
        ColorfulContainer(cor: Colors.blue, title: 'box 1'),
        ColorfulContainer(
          cor: Colors.pink,
        )
      ]),
    );
  }
}

class ColorfulContainer extends StatelessWidget {
  final Color cor;
  final String title;

  ColorfulContainer({Key? key, required this.cor, this.title = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 100,
      color: cor,
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(
            color: Colors.yellow,
            fontSize: 25,
            decoration: TextDecoration.none),
      ),
    );
  }
}
