void main() {
  final comeco = 100;
  final fim = 300;

  for (var i = 10; i <= fim - comeco; i++) {
    var contador = comeco + i;
    if (contador % 10 == 0) {
      print(contador);
    }
  }
}
