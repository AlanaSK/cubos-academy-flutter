import 'package:flutter/material.dart';

typedef NumberPressedCallBack = void Function(String);

class NumberButton extends StatelessWidget {
  const NumberButton(
      {Key? key, required this.number, required this.onNumberPressed})
      : super(key: key);

  final String number;
  final NumberPressedCallBack onNumberPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(shape: BeveledRectangleBorder()),
            onPressed: () => onNumberPressed(number),
            child: Text(number)));
  }
}
