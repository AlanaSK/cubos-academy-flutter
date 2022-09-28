void main() {
  double nota1 = 7;
  double nota2 = 6.3;
  double nota3 = 8;
  double nota4 = 5.5;

  double media = (nota1 + nota2 + nota3 + nota4) / 4;

  if (media >= 6) {
    print('Média: $media');
    print('Aprovado!');
  } else {
    print('Média: $media');
    print('Reprovado.');
  }
}
