import 'package:conversor_temperatura/conversor_temperatura.dart'
    as conversor_temperatura;

void main(List<String> arguments) {
  final celsius = 45;
  final f = ((9 * celsius) + 160) ~/ 5;
  print('$f' '°F');
}
