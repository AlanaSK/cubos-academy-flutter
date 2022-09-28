import 'package:crud_listas/crud_listas.dart' as crud_listas;

void main(List<String> arguments) {
  final initialList = List<int>.unmodifiable([4, 9, 2, 3, 5]);

  final workList = List.from(initialList);

  if (workList.length > 5) {
    if (workList.first == 0 && workList.last == 10) {
      workList.removeRange(1, (workList.length + 1) - 5);
    } else if (workList[3] == 3) {
      workList.first = 1;
      workList.last = 9;
      final end = workList.length - 1;
      final start = end - (workList.length - 5);
      workList.removeRange(start, end);
    } else {
      workList.removeLast();
      if (workList.length > 5) {
        workList.remove(0);
      }
      if (workList.length > 5) {
        workList.removeRange(0, workList.length - 5);
      }
    }
  } else {
    final tempList = List.filled(5 - workList.length, 2);
    workList.addAll(tempList);
    workList[1] = 8;
  }

  final soma = workList[1] + workList[3];
  final divisao = workList[4] / workList[2];

  print(initialList);
  print(workList);

  if (soma * divisao > 15) {
    print('Lista Valida');
  } else {
    print('Lista Inválida');
  }
}
