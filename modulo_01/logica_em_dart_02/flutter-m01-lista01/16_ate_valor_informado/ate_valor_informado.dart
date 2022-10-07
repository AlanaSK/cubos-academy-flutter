void main() {
  int numero = 5;
  List numeros = [];

  for (var i = (numero - 1); i >= 0; i--) {
    int numeroloop = numero - i;
    numeros.add(numeroloop);
  }

  print(numeros.join(', ') + '.');
}
