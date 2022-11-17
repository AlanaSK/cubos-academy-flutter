import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyAppBarCoffee(),
    );
  }
}

class MyAppBarCoffee extends StatelessWidget {
  const MyAppBarCoffee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[300],
        title: Text('Coffee',
            style: TextStyle(fontSize: 40, color: Colors.brown[500])),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
                onPressed: () {},
                icon: Icon(Icons.coffee, color: Colors.brown[500], size: 40));
          },
        ),
      ),
    );
  }
}
