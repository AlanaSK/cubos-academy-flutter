import 'package:triangulo_de_floyd/triangulo_de_floyd.dart'
    as triangulo_de_floyd;

void main(List<String> arguments) {
  final n = 6;
  int soma = 0;
  final lines = <String>[];

  for (var i = 1; i <= n; i++) {
    String line = '';
    for (var j = 1; j <= i; j++) {
      soma++;
      final separador = line.isEmpty ? '' : ' ';
      line += '$separador$soma';
    }
    lines.add(line);
  }
  // lines.reversed.forEach((line) => print(line));
  lines.reversed.forEach(print);
}
