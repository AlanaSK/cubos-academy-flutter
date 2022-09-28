import 'package:listas_listas_listas/listas_listas_listas.dart'
    as listas_listas_listas;

void main(List<String> arguments) {
  final listaA = List.empty(growable: true);
  final listaB = List.filled(4, 2.2);
  final listaC = List.unmodifiable(listaB);
  final listaD = [...listaC, 2, 3];
  final listaE = listaA + listaC;
  final listaF = [if (listaE.length == 4) 2.2, 5, 10];

  print(listaE ==
      listaB); //o conteúdo pode ser igual mas referencia a listas diferentes.

  listaD.clear();
  print(listaD);

  print(listaF[0] == listaC[listaC.length - 1]);
  print(listaF.first == listaC.last);

  final listaG = listaF;
  listaF.add(5);
  print(listaF);
  print(listaG);
  print(listaG == listaF); //true
}
