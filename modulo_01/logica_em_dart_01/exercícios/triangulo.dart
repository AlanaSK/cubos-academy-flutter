import 'package:triangulo/triangulo.dart' as triangulo;
import 'dart:math';

void main(List<String> arguments) {
  final a = 2;
  final b = 2;
  final c = 2;

  if ((a < b + c) && (b < a + c) && (c < a + b)) {
    print('É um triangulo.');
    if ((a == b) && (b == c)) {
      print('Triangulo Equilatero');
    } else if ((a == b) || (b == c) || (a == c)) {
      print('Triangulo isóceles');
    } else if ((a != b) && (b != c) && (a != c)) {
      print('triangulo escaleno');
    }

    if ((a * a) + (b * b) == (c * c)) {
      print('Triangulo retangulo');
    }
  } else {
    print('Não é um triangulo.');
  }
}
