import 'funcionario.dart';

class Gerente extends Funcionario {
  Gerente(super.matricula, super.nome, super.sobrenome, super.salario, super.horasTrabalhadas);

  //metodos
  @override
  double calcularSalario() {
    double salario = super.calcularSalario();
    return salario + (salario / 100 * 35);
  }

}