void main(List<String> arguments) {
  final ano = 2000;

  if (ano % 4 == 0) {
    if (ano % 100 != 0 || ano % 400 == 0) {
      print('Ano bissexto');
    } else {
      print('');
    }
  } else {
    print('');
  }
}
