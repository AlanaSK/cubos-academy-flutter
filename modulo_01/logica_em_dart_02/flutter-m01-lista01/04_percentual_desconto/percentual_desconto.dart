void main() {
  final percentualDesconto = 10;
  final valorProduto = 500;

  final valorDesconto = valorProduto * percentualDesconto / 100;
  final valorProdutoDesconto = valorProduto - valorDesconto;

  print('Preço do produto: R\$ ' + valorProduto.toStringAsFixed(2));
  print('Desconto de ' +
      percentualDesconto.toString() +
      '%: R\$ ' +
      valorDesconto.toStringAsFixed(2));
  print('Preço do produto com desconto: R\$ ' +
      valorProdutoDesconto.toStringAsFixed(2));
}
