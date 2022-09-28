void main() {
  String opcao = 'R';

  switch (opcao.toUpperCase()) {
    case 'C':
      {
        print('Cadastrar/Inserir');
      }
      break;
    case 'R':
      {
        print('Buscar/Ler');
      }
      break;
    case 'U':
      {
        print('Editar/Atualizar');
      }
      break;
    case 'D':
      {
        print('Excluir/Apagar');
      }
  }
}
