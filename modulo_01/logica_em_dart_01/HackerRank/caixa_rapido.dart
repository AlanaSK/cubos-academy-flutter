void main(List<String> arguments) {
  num valor = 20;
  String msg = '';

  final cedula100 = valor ~/ 100;
  valor -= cedula100 * 100;
  if (cedula100 > 0) {
    msg += '$cedula100 de 100';
  }

  final cedula50 = valor ~/ 50;
  valor -= cedula50 * 50;
  if (cedula50 > 0) {
    if ((cedula50 > 0) && (cedula100 > 0)) {
      msg += ', $cedula50 de 50';
    } else {
      msg += '$cedula50 de 50';
    }
  }

  final cedula20 = valor ~/ 20;
  valor -= cedula20 * 20;
  if (cedula20 > 0) {
    if (cedula100 > 0 || cedula50 > 0) {
      msg += ', $cedula20 de 20';
    } else {
      msg += '$cedula20 de 20';
    }
  }

  final cedula10 = valor ~/ 10;
  valor -= cedula10 * 10;
  if (cedula100 > 0 || cedula50 > 0 || cedula20 > 0) {
    msg += ', $cedula10 de 10';
  } else {
    msg += '$cedula10 de 10';
  }

  final cedula5 = valor ~/ 5;
  valor -= cedula5 * 5;
  if ((cedula5 > 0) &&
      (cedula10 > 0 || cedula50 > 0 || cedula20 > 0 || cedula10 > 0)) {
    msg += ', $cedula5 de 5';
  } else {
    msg += '$cedula5 de 5';
  }

  final cedula2 = valor ~/ 2;
  valor -= cedula2 * 2;
  if ((cedula2 > 0) &&
      ((cedula10 > 0) ||
          (cedula50 > 0) ||
          (cedula20 > 0) ||
          (cedula10 > 0) ||
          (cedula5 > 0))) {
    msg += ', $cedula2 de 2';
  }

  print(msg);
}
