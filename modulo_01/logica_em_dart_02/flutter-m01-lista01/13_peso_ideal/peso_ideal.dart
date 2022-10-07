void main() {
  String sexo = 'f';
  final altura = 1.85;
  final peseoIdeal;

  switch (sexo.toUpperCase()) {
    case 'F':
      {
        peseoIdeal = (62.1 * altura) - 44.7;
        print('Peso ideal: $peseoIdeal Kg');
      }
      break;

    case 'M':
      {
        peseoIdeal = (72.7 * altura) - 58;
        print('Peso ideal: $peseoIdeal kg');
      }
      break;
  }
}
