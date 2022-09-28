void main() {
  int numeroEntrada = 11;
  List numeros = [];

  for (var i = 0; i <= 11; i++) {
    if (i % 2 != 0) {
      numeros.add(i);
    }
  }

  print(numeros.join(', ') + '.');
}
