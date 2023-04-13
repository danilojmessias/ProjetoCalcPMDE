import 'package:calculadora/models/memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../components/display.dart';
import '../components/keyboard.dart';

// onde calculo
class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();

  void _onPressed(String command) {
    setState(() {
      memory.command(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    // para não mudar o layout quando mudar orientação
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp],
    );
    return Scaffold(
      body: Column(
        children: <Widget>[
          Display(
            text: memory.value,
          ),
          Keyboard(
            _onPressed,
          ),
        ],
      ),
    );
  }
}
