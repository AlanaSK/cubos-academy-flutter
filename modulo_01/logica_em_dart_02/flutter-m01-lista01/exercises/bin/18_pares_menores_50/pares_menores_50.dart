void main() {
  int inicio = 1;
  int fim = 50;
  List<int> listaNumerosPares = [];

  for (var i = 0; i < fim - 1; i++) {
    int numeros = inicio + i;
    if (numeros % 2 == 0) {
      listaNumerosPares.add(numeros);
    }
  }
  print(listaNumerosPares.join(' '));
}
