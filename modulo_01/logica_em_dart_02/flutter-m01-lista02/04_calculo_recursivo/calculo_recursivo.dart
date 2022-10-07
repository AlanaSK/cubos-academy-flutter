void main() {
  int valorFinal = 23;

  somaRecursiva(valorFinal);
}

void somaRecursiva(int valorFinal) {
  int soma = 0;

  for (var i = 0; i <= valorFinal; i++) {
    soma += i;
  }
  print('Todos valores somados de 0 até $valorFinal: $soma');
}
