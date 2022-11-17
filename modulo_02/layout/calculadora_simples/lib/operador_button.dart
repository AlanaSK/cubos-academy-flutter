import 'package:flutter/material.dart';

typedef OperadorPresssedCallback = void Function(String);

class OperadorButton extends StatelessWidget {
  const OperadorButton(
      {Key? key,
      required this.operador,
      required this.onOperadorPresssed,
      required this.disabled})
      : super(key: key);

  final String operador;
  final OperadorPresssedCallback onOperadorPresssed;
  final bool disabled;

  IconData mapOperadorIcon() {
    switch (operador) {
      case 'x':
        return Icons.close;
      case '-':
        return Icons.remove;
      default:
        return Icons.add;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: IconButton(
            onPressed: disabled ? null : () => onOperadorPresssed(operador),
            icon: Icon(mapOperadorIcon())));
  }
}
