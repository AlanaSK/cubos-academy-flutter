import 'package:flutter/material.dart';

void main() {
  runApp(MyStatefulText());
}

class MyStatelessText extends StatelessWidget {
  const MyStatelessText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Não consigo me atualizar',
        textDirection: TextDirection.ltr,
      ),
    );
  }
}

class MyStatefulText extends StatefulWidget {
  const MyStatefulText({super.key});

  @override
  State<MyStatefulText> createState() => _MyStatefulTextState();
}

class _MyStatefulTextState extends State<MyStatefulText> {
  int count = 0;

  void updateCount() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: updateCount,
        child: Text(
          'Fui atualizado $count vezes',
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
