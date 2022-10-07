import 'calculadora.dart';
import 'tela.dart';

void main() {
  Tela tela = Tela();
  Calculadora calculadora = Calculadora();
  num valor1 = 11;
  num valor2 = 7.45;
  String operacao = 'somar';

  switch (operacao) {
    case 'somar':
      tela.mostrar(
          'Resultado: ${calculadora.somar(valor1, valor2).toStringAsFixed(2)}');
      break;

    case 'subtrair':
      tela.mostrar(
          'Resultado: ${calculadora.subtrair(valor1, valor2).toStringAsFixed(2)}');
      break;

    case 'dividir':
      tela.mostrar(
          'Resultado: ${calculadora.dividir(valor1, valor2).toStringAsFixed(2)}');
      break;

    case 'multiplicar':
      tela.mostrar(
          'Resultado: ${calculadora.multiplicar(valor1, valor2).toStringAsFixed(2)}');
      break;

    default:
      tela.mostrar('inválido');
      break;
  }
}
