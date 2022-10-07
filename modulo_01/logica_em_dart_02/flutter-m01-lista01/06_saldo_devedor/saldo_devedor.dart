void main() {
  final totalParcelas = 60;
  final parcelasPagas = 18;
  final valorParcela = 566.78;

  final valorTotal = totalParcelas * valorParcela;
  final saldoDevedor = valorTotal - (parcelasPagas * valorParcela);

  print('Valor total do consórcio: R\$ ' + valorTotal.toStringAsFixed(2));
  print('Saldo devedor: R\$ ' + saldoDevedor.toStringAsFixed(2));
}
