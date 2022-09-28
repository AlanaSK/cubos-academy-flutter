void main() {
  double precoProduto = 2500;

  final desconto10 = (precoProduto * 10 / 100);
  final precoComDesconto = (precoProduto - desconto10);

  print('Preço do produto: R\$ ' + precoProduto.toStringAsFixed(2));
  print('Desconto de 10%: R\$ ' + desconto10.toStringAsFixed(2));
  print('Preço do produto com desconto: R\$ ' +
      precoComDesconto.toStringAsFixed(2));
}
