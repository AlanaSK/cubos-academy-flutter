import 'funcionario.dart';

class Vendedor extends Funcionario {
  Vendedor(super.matricula, super.nome, super.sobrenome, super.salario, super.horasTrabalhadas);

  @override
  double calcularSalario() {
    double salario = super.calcularSalario();
    return salario + (salario / 100 * 20);
  }
}