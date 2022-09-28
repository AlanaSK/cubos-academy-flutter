import 'dart:io';

void main() {
  // Nao deletar
  final line = stdin.readLineSync() ?? '';
  if (line.isEmpty) exit(0);
  final inputs = line.split(' ');

  // Variaveis iniciais
  final number1 = double.parse(inputs[0]);
  final operator = inputs[1];
  final number2 = double.parse(inputs[2]);

  // Escreva seu programa a partir daqui

  final operacao = (number1 + number2);

  switch (operator) {
    case '+':
      operator == '+';
      break;
    case '-':
      operator == '-';
      break;
    case '*':
      operator == '*';
      break;
    case '/':
      operator == '/';
      break;
    default:
      operator == '+';
  }

  if (operacao is int) {
    print(operacao ~/ 1);
  }

  print(operacao);
}
