void main() {
  num? valor;

  if (valor == null) {
    print('NullPointerException: Erro ao acessar um valor nulo na memória');
  } else {
    print('Valor informado: $valor');
  }
}
