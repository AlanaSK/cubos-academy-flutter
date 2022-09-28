import 'package:calculadora_imc/calculadora_imc.dart' as calculadora_imc;

void main(List<String> arguments) {
  print('Qual meu IMC?');
  var peso = 80;
  var altura = 1.70;
  var imc = peso / (altura * altura);
  print('Peso=80kg, altura=1.70, IMC será:');
  print(imc.toStringAsFixed(2));
}
