import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onPressed,
  });

  final String answerText;
  final void Function() onPressed;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(43, 65, 51, 94),
        foregroundColor: Colors.white,
      ),
      child: Text(answerText,
          textAlign: TextAlign.center,
          style: GoogleFonts.firaCode(
            color: const Color.fromARGB(255, 255, 255, 255),
            fontSize: 15,
          )
          /* const TextStyle(
          fontSize: 15,
        ), */
          ),
    );
  }
}
