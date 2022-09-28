void main() {
  final valor1 = 3;
  final valor2 = 3;

  if (valor1 > valor2) {
    print('Maior valor: $valor1');
    print('Menor valor: $valor2');
  } else if (valor2 > valor1) {
    print('Maior valor: $valor2');
    print('Menor valor: $valor1');
  } else {
    print('Valores iguais');
  }
}
