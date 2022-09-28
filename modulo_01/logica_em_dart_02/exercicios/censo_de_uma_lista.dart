import 'package:censo_de_uma_lista/censo_de_uma_lista.dart'
    as censo_de_uma_lista;

void main(List<String> arguments) {
  final lista = [3, 5, 10, 2, 5, 1, 2, 3, 6, 12, 15, 22, 8, 4, 13, 25];

  // int maiorNum = lista[0];
  // int menorNum = lista[0];
  // int soma = 0;
  // int pares = 0;
  // int impares = 0;

  // for (final element in lista) {
  //   soma += element;
  //   if (element > maiorNum) {
  //     maiorNum = element;
  //   }
  //   if (element < menorNum) {
  //     menorNum = element;
  //   }
  //   if (element % 2 == 0) {
  //     pares++;
  //   } else {
  //     impares++;
  //   }
  // }
  // final media = soma / lista.length;

  // print(
  //     'Maior: $maiorNum, Menor: $menorNum, Média: $media, Pares: $pares, Impares: $impares');

  lista.sort();
  final maiorNum = lista.last;
  final menorNum = lista.first;
  final media = lista.reduce((value, element) => value + element) / lista.length;
  final pares = lista.where((element) => element % 2 == 0).length;
  final impares = lista.where((element) => element % 2 != 0).length;

  print('Maior: $maiorNum, Menor: $menorNum, Média: $media, Pares: $pares, Impares: $impares');

}

