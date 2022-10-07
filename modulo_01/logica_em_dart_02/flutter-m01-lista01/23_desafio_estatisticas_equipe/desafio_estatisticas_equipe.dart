void main() {
  List dados = [
    ["Mauricio", 8, 4, 18, 12, 2, 1],
    ["Marcelo", 15, 10, 8, 5, 21, 10],
    ["Tande", 11, 6, 14, 12, 15, 11],
    ["Giovane", 11, 5, 10, 8, 18, 12],
    ["Paulo", 9, 2, 15, 12, 15, 10],
    ["Carlos", 10, 3, 10, 3, 12, 8]
  ];

  dadosJogadores(dados);
}

void dadosJogadores(List dados) {
  for (var i = 0; i < dados.length; i++) {
    print('Jogador: ${dados[i][0]}');

    double porcentagemSaques = dados[i][2] / dados[i][1] * 100;
    print('Saque: ${dados[i][2]}/${dados[i][1]} (${porcentagemSaques.toStringAsFixed(2)}%)');

    double porcentagemBloqueios = dados[i][4] / dados[i][3] * 100;
    print('Bloqueio: ${dados[i][4]}/${dados[i][3]} (${porcentagemBloqueios.toStringAsFixed(2)}%)');

    double porcentagemAtaques = dados[i][6] / dados[i][5] * 100;
    print('Ataque: ${dados[i][6]}/${dados[i][5]} (${porcentagemAtaques.toStringAsFixed(2)}%)\n');
  }
}
