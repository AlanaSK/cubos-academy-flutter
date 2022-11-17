import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Menu Drawer',
      debugShowCheckedModeBanner: false,
      home: MenuDrawer(),
    );
  }
}

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Menu Drawer',
          style: TextStyle(fontSize: 30, color: Colors.pink[100]),
        ),
        backgroundColor: Colors.pink,
      ),
      endDrawer: Drawer(
        child: ListView(
          children: const [
            ListTile(
              title: Text(
                'Flutter',
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text(
                'Tudo são Widgets',
                style: TextStyle(fontSize: 16),
              ),
              leading: Icon(
                Icons.flash_on,
                color: Colors.blue,
                size: 45,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
            ),
            ListTile(
              title: Text(
                'Dart',
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text(
                'É muito forte',
                style: TextStyle(fontSize: 16),
              ),
              leading: Icon(
                Icons.emoji_emotions_outlined,
                color: Colors.orange,
                size: 45,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
            ),
            ListTile(
              title: Text(
                'Cafézinho',
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text(
                'Quero caféééé',
                style: TextStyle(fontSize: 16),
              ),
              leading: Icon(
                Icons.coffee,
                color: Colors.brown,
                size: 45,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
