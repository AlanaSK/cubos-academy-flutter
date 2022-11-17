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
      title: 'Navigation Bar',
      debugShowCheckedModeBanner: false,
      home: NavigationBar(),
    );
  }
}

class NavigationBar extends StatelessWidget {
  const NavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[300],
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 36,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 36,
              ),
              label: 'Configurações'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.login,
                size: 36,
              ),
              label: 'Login')
        ],
      ),
    );
  }
}
