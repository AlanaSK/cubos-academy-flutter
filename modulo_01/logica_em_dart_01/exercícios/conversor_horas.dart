import 'package:conversor_horas/conversor_horas.dart' as conversor_horas;

void main(List<String> arguments) {
  final dayToMinute = 1440;
  final hourToMinute = 60;
  final minutesToSec = 60;

  double time = 1742.7;

  int days = 0;
  if (time > dayToMinute) {
    days = time ~/ dayToMinute;
    time %= dayToMinute;
  }

  int hours = 0;
  if (time > hours) {
    hours = time ~/ hourToMinute;
    time %= hourToMinute;
  }

  // final minutes = time;
  final minutesDecimal = time;
  final minutes = minutesDecimal ~/ 1;
  final secondsDecimal = minutesDecimal % 1;
  final seconds = (secondsDecimal * minutesToSec) ~/ 1;

  String msg = '';

  if (days > 0) {
    final dayComplement = days == 1 ? 'dia' : 'dias';
    msg += '$days $dayComplement, ';
  }

  if (hours > 0) {
    final hourComplement = hours == 1 ? 'hora' : 'horas';
    msg += '$hours $hourComplement, ';
  }

  if (minutes > 0) {
    final minuteComplement = minutes == 1 ? 'minuto' : 'minutos';
    msg += '$minutes $minuteComplement, ';
  }

  msg += '$seconds segundos.';

  print(msg);
}
