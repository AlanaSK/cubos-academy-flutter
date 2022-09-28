import 'package:tabela_imc/tabela_imc.dart' as tabela_imc;
import 'dart:math';

void main(List<String> arguments) {
  final peso = 88;
  final altura = 1.65;
  final imc = peso / pow(altura, 2);

  if (imc < 18.5) {
    print('Abaixo do peso.');
  } else if (imc < 25) {
    print('Peso normal ou Saudável');
  } else if (imc < 30) {
    print('Acima do peso');
  } else {
    print('Obesidade');
  }
}
