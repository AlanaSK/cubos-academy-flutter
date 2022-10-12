import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Card(
        color: Colors.pinkAccent,
        child: Center(
          child: Text("Buenas",
              style: TextStyle(fontSize: 32.0, color: Colors.white)),
        ),
      ),
    );
  }
}
