import 'package:flutter/material.dart';

// onde crio o modelo dos botoes
class Button extends StatelessWidget {
  static const Color OPERATOR = Color.fromARGB(255, 234, 167, 192);

  final String text;
  final bool large;
  final Color color;
  final void Function(String) callback;

  const Button({
    super.key,
    required this.text,
    this.large = false,
    this.color = const Color(0xffffc8dd),
    required this.callback,
  });
  // para mudar de cor quando for operador
  const Button.operator({
    super.key,
    required this.text,
    this.large = false,
    this.color = OPERATOR,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: large ? 2 : 1,
      child: ElevatedButton(
        onPressed: () => callback(text),
        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(color)),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black38,
            fontSize: 28,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
