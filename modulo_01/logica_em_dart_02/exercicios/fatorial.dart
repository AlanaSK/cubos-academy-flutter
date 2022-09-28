import 'package:fatorial/fatorial.dart' as fatorial;

void main(List<String> arguments) {
  final n = 8;
  var fatorial = 1;

  for (var i = n; i >= 1; i--) {
    fatorial *= i;
  }
  print('$n! = $fatorial');
}
