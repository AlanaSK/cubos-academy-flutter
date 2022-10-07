void main() {
  int fim = 200;

  for (var i = 0; i <= 200; i++) {
    if (i % 2 != 0) {
      int quadradoImpar = i * i;
      print('$i * $i = $quadradoImpar');
    }
  }
}
