import 'caixa.dart';
import 'gerente.dart';
import 'vendedor.dart';

void main() {
  final caixa = Caixa(1579, 'Ana', 'Oliveira', 1212, 230);
  final vendedor = Vendedor(1601, 'João', 'Silva', 1212, 230);
  final gerente = Gerente(1603, 'Maria', 'Souza', 1212, 230);

  print(
      'Matrícula: ${caixa.matricula}\nNome: ${caixa.nome} ${caixa.sobrenome}\nHoras Trabalhadas: ${caixa.horasTrabalhadas}\nSalário: ${caixa.calcularSalario().toStringAsFixed(2)}\n');

  print(
      'Matrícula: ${vendedor.matricula}\nNome: ${vendedor.nome} ${vendedor.sobrenome}\nHoras Trabalhadas: ${vendedor.horasTrabalhadas}\nSalário: ${vendedor.calcularSalario().toStringAsFixed(2)}\n');

  print(
      'Matrícula: ${gerente.matricula}\nNome: ${gerente.nome} ${gerente.sobrenome}\nHoras Trabalhadas: ${gerente.horasTrabalhadas}\nSalário: ${gerente.calcularSalario().toStringAsFixed(2)}\n');
}
