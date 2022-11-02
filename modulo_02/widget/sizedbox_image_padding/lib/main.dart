import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: Text('Height: 300 \n Width: 300'),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.network(
              'https://imagens.ne10.uol.com.br/veiculos/_midias/png/2022/07/28/bts_copa_do_mundo-21435572.png'),
          const SizedBox(
            height: 20,
          ),
          Expanded(child: Image.asset('assets/bts.jpg'))
        ],
      ),
    );
  }
}
