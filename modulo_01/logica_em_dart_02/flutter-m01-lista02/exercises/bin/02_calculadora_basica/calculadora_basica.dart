void main() {
  double valor1 = 5.3;
  double valor2 = 4.25;
  String operacao = 'multiplicação';

  String operador = '+';
  double resultado = 0;

  double adicao(double num1, double num2) {
    return num1 + num2;
  }

  double subtracao(double num1, double num2) {
    return num1 - num2;
  }

  double divisao(double num1, double num2) {
    return num1 / num2;
  }

  double multiplicacao(double num1, double num2) {
    return num1 * num2;
  }

  switch (operacao.toLowerCase()) {
    case 'adição':
      resultado = adicao(valor1, valor2);
      operador = '+';
      break;
    case 'subtração':
      resultado = subtracao(valor1, valor2);
      operador = '-';
      break;
    case 'divisão':
      resultado = divisao(valor1, valor2);
      operador = '/';
      break;
    case 'multiplicação':
      resultado = multiplicacao(valor1, valor2);
      operador = '*';
      break;
  }

  void mensagem() {
    if (operacao == 'adição' ||
        operacao == 'subtração' ||
        operacao == 'divisão' ||
        operacao == 'multiplicação') {
      print(
          'Resultado de $valor1 $operador $valor2: ${resultado.toStringAsFixed(2)}');
    } else {
      print('Operação inválida');
    }
  }

  mensagem();
}
