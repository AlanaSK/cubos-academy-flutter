void main() {
  String nome = 'Cristiane';
  int diaNasc = 30;
  int mesNasc = 9;
  int anoNasc = 2020;

  void idadeDados(String nome, int diaNasc, int mesNasc, int anoNasc) {
    final dataAtual = DateTime.now();
    int diaAtual = dataAtual.day;
    int mesAtual = dataAtual.month;
    int anoAtual = dataAtual.year;
    int idade = 0;
    String permisao = '';

    if (anoAtual - anoNasc > 0) {
      if (mesAtual - mesNasc >= 0) {
        if (diaAtual - diaNasc >= 0) {
          idade = anoAtual - anoNasc;
        } else {
          idade = anoAtual - anoNasc - 1;
        }
      } else {
        idade = anoAtual - anoNasc - 1;
      }
    }

    (idade >= 18) ? permisao = 'Pode dirigir!' : permisao ='Não pode dirigir';

    print('Nome: $nome\nIdade: $idade\n$permisao');
  }

  idadeDados(nome, diaNasc, mesNasc, anoNasc);
}
