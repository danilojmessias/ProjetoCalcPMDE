import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//onde crio a telinha onde ficam os numeros
class Display extends StatelessWidget {
  const Display({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: const Color(0xffcdb4db),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(text,
                    textAlign: TextAlign.end,
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w200,
                      color: Colors.black,
                      fontSize: 50,
                      letterSpacing: 0.1,
                    )),
              ),
            ]),
      ),
    );
  }
}
