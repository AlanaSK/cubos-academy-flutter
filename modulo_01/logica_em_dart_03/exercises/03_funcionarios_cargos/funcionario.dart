abstract class Funcionario {
  int matricula;
  String nome;
  String sobrenome;
  double salario;
  int horasTrabalhadas;

  Funcionario(this.matricula, this.nome, this.sobrenome, this.salario,
      this.horasTrabalhadas);

  double calcularSalario() {
    if (this.horasTrabalhadas > 220) {
      int horasExtras = this.horasTrabalhadas - 220;
      double valorHora = this.salario / 220;
      double valorHoraExtra = valorHora / 2 + valorHora;

      return this.salario + (valorHoraExtra * horasExtras);
    }
    return this.salario;
  }
}
