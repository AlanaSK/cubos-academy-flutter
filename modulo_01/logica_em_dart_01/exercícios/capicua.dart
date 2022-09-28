import 'package:capicua/capicua.dart' as capicua;

void main(List<String> arguments) {
  int num = 10901;
  final digit1 = num ~/ 10000;
  num %= 10000;

  final digit2 = num ~/ 1000;
  num %= 1000;

  final digit3 = num ~/ 100;
  num %= 100;

  final digit4 = num ~/ 10;
  num %= 10;
  print('digit1$digit2$digit3$digit4$num');

  if ((digit1 == num) && (digit2 == digit4)) {
    print('é capicua');
  } else {
    print('não é capicua');
  }
}
