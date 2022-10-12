import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Card(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Colors.blue, Colors.purple])),
        child: Center(
          child: Text(
            'Flutter Gradient',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
      ),
    ));
  }
}
