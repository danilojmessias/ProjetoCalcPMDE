import 'package:flutter/material.dart';
import 'button.dart';
import 'button_row.dart';

//onde crio o teclado
class Keyboard extends StatelessWidget {
  final void Function(String) callback;
  Keyboard(this.callback);
//essa função retorna o valor do text do botao
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 1,
          ),
          ButtonRow(
            buttons: [
              Button(
                text: 'del',
                large: false,
                callback: callback,
              ),
              Button(
                text: 'C',
                large: false,
                callback: callback,
              ),
              Button.operator(
                text: '÷',
                large: false,
                callback: callback,
              ),
            ],
          ),
          SizedBox(
            height: 1,
          ),
          ButtonRow(
            buttons: [
              Button(
                text: '7',
                callback: callback,
              ),
              Button(
                text: '8',
                callback: callback,
              ),
              Button(
                text: '9',
                callback: callback,
              ),
              Button.operator(
                text: 'x',
                callback: callback,
              ),
            ],
          ),
          SizedBox(
            height: 1,
          ),
          ButtonRow(
            buttons: [
              Button(
                text: '4',
                callback: callback,
              ),
              Button(
                text: '5',
                callback: callback,
              ),
              Button(
                text: '6',
                callback: callback,
              ),
              Button.operator(
                text: '–',
                callback: callback,
              ),
            ],
          ),
          SizedBox(
            height: 1,
          ),
          ButtonRow(
            buttons: [
              Button(
                text: '1',
                callback: callback,
              ),
              Button(
                text: '2',
                callback: callback,
              ),
              Button(
                text: '3',
                callback: callback,
              ),
              Button.operator(
                text: '+',
                callback: callback,
              ),
            ],
          ),
          SizedBox(
            height: 1,
          ),
          ButtonRow(
            buttons: [
              Button(
                text: '0',
                large: true,
                callback: callback,
              ),
              Button(
                text: '.',
                callback: callback,
              ),
              Button.operator(
                text: '=',
                callback: callback,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
