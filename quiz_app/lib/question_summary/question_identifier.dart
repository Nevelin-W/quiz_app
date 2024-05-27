import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIndex,
  });

  final bool isCorrectAnswer;
  final int questionIndex;

  @override
  Widget build(context) {
    final colorcorrectColor = (isCorrectAnswer)
        ? const Color.fromARGB(255, 0, 255, 0)
        : const Color.fromARGB(255, 255, 0, 0);
    final questionNumber = questionIndex + 1;
    return Container(
      decoration: ShapeDecoration(
        shape: CircleBorder(
          side: BorderSide(color: colorcorrectColor, width: 15),
        ),
        color: colorcorrectColor,
      ),
      child: Text(
        questionNumber.toString(),
        textAlign: TextAlign.left,
        style: GoogleFonts.firaCode(
          color: const Color.fromARGB(255, 0, 0, 0),
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
