import 'carro.dart';

void main() {
  final carro1 = Carro('Fiat', 'Palio', 'branco', '1.0', 'flex');
  final carro2 = Carro('Honda', 'Civic', 'cinza', '1.8', 'gasolina');
  final carro3 = Carro('Hyundai', 'Tucson', 'prata', '2.4', 'gasolina');

  print(
      'Montadora: ${carro1.nomeMontadora}\nModelo: ${carro1.modeloCarro}\nCor: ${carro1.corCarro}\nMotor: ${carro1.potenciaMotor}\nCombustivel: ${carro1.tipoCombustivel}\n');
  print(
      'Montadora: ${carro2.nomeMontadora}\nModelo: ${carro2.modeloCarro}\nCor: ${carro2.corCarro}\nMotor: ${carro2.potenciaMotor}\nCombustivel: ${carro2.tipoCombustivel}\n');
  print(
      'Montadora: ${carro3.nomeMontadora}\nModelo: ${carro3.modeloCarro}\nCor: ${carro3.corCarro}\nMotor: ${carro3.potenciaMotor}\nCombustivel: ${carro3.tipoCombustivel}');
}
