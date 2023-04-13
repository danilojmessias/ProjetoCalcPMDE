import 'button.dart';
import 'package:flutter/material.dart';

//classe onde crio o modelo de linha de botoes
class ButtonRow extends StatelessWidget {
  final List<Button> buttons;
  const ButtonRow({super.key, required this.buttons});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold(<Widget>[], (list, bt) {
          list.isEmpty
              ? list.add(bt)
              : list.addAll([
                  SizedBox(
                    width: 1,
                  ),
                  bt
                ]);
          return list;
        }),
      ),
    );
  }
}
