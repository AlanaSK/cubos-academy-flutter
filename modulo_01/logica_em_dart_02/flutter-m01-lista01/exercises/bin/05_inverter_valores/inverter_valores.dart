void main() {
  int valorA = 3;
  int valorB = 5;

  int temporario = valorA;
  valorA = valorB;
  valorB = temporario;

  print(
      'Valores originais:\n  -Valor A: $valorB\n  -Valor B: $valorA\n\nValores invertidos:\n  -Valor A: $valorA\n  -Valor B: $valorB');
}
