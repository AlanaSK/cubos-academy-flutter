import 'package:calculadora_simples/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'display.dart';
import 'number_button.dart';
import 'operador_button.dart';

const appName = 'Calculadora Simples';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode currentThemeMode = ThemeMode.light;

  void toggleThemeMode() {
    setState(() {
      currentThemeMode = currentThemeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      themeMode: currentThemeMode,
      theme: SimpleCalculatorTheme.light,
      darkTheme: SimpleCalculatorTheme.dark,
      home: SimpleCalculator(onThemeModePressed: toggleThemeMode),
    );
  }
}

class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({Key? key, required this.onThemeModePressed})
      : super(key: key);

  final VoidCallback onThemeModePressed;

  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  String display = '';
  String firstNumber = '0';
  static const operadores = ['x', '+', '-'];
  String operador = '';
  String secondNumber = '';

  double progress = 0;
  bool disableOperadorButton = false;

  void calculate() {
    final number1 = int.parse(firstNumber);
    final number2 = int.parse(secondNumber);
    int result = 0;

    switch (operador) {
      case 'x':
        result = number1 * number2;
        break;
      case '-':
        result = number1 - number2;
        break;
      case '+':
        result = number1 + number2;
        break;
      default:
        result = number1 + number2;
        break;
    }

    firstNumber = result.toString();
    secondNumber = '';
    operador = '';

    setState(() {
      display = result.toString();
      progress = 0.33;
      disableOperadorButton = false;
    });
  }

  void insert(String char) {
    if (char == '0') {
      if (operador.isEmpty && firstNumber.isEmpty) return;
      if (operador.isNotEmpty && secondNumber.isEmpty) return;
    }

    if (operadores.contains(char)) {
      if (firstNumber.isEmpty) {
        firstNumber = '0';
      }
      operador = char;
    } else {
      if (operador.isEmpty) {
        firstNumber += char;
      } else {
        secondNumber += char;
      }
    }
    setState(() {
      if (operador.isEmpty) {
        display = firstNumber;
        progress = 0.33;
      } else {
        if (secondNumber.isEmpty) {
          display = '$firstNumber $operador';
          progress = 0.66;
        } else {
          display = '$firstNumber $operador $secondNumber';
          progress = 1;
          disableOperadorButton = true;
        }
      }
    });
  }

  void clear() {
    firstNumber = '';
    operador = '';
    secondNumber = '';
    setState(() {
      display = '0';
      progress = 0;
      disableOperadorButton = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text(appName),
          actions: [
            IconButton(
                onPressed: widget.onThemeModePressed,
                icon: Icon(theme.brightness == Brightness.light
                    ? Icons.dark_mode
                    : Icons.light_mode))
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: FloatingActionButton(onPressed: clear, child: const Text('C')),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
              child: Display(display: display),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
              child: Center(
                  child: LinearProgressIndicator(
                backgroundColor: theme.scaffoldBackgroundColor,
                value: progress,
              )),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  NumberButton(
                    number: '7',
                    onNumberPressed: insert,
                  ),
                  NumberButton(
                    number: '8',
                    onNumberPressed: insert,
                  ),
                  NumberButton(
                    number: '9',
                    onNumberPressed: insert,
                  ),
                  OperadorButton(
                    operador: 'x',
                    onOperadorPresssed: insert,
                    disabled: disableOperadorButton,
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  NumberButton(
                    number: '4',
                    onNumberPressed: insert,
                  ),
                  NumberButton(
                    number: '5',
                    onNumberPressed: insert,
                  ),
                  NumberButton(
                    number: '6',
                    onNumberPressed: insert,
                  ),
                  OperadorButton(
                    operador: '-',
                    onOperadorPresssed: insert,
                    disabled: disableOperadorButton,
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  NumberButton(
                    number: '1',
                    onNumberPressed: insert,
                  ),
                  NumberButton(
                    number: '2',
                    onNumberPressed: insert,
                  ),
                  NumberButton(
                    number: '3',
                    onNumberPressed: insert,
                  ),
                  OperadorButton(
                    operador: '+',
                    onOperadorPresssed: insert,
                    disabled: disableOperadorButton,
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 3,
                    child: TextButton(
                      onPressed: () => insert('0'),
                      child: const Text('0'),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton(
                      onPressed: calculate,
                      child: const Text('='),
                    ),
                  ))
                ],
              ),
            ),
          ],
        ));
  }
}
