import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/question_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(context) {
    final int questionIndex = itemData['question_index'] as int;
    final String question = itemData['question'] as String;
    final String correctAnswer = itemData['correct_answer'] as String;
    final String userAnswer = itemData['user_answer'] as String;
    final bool correct = (correctAnswer == userAnswer);
    final Color correctColor = correct
        ? const Color.fromARGB(255, 0, 255, 8)
        : const Color.fromARGB(255, 163, 34, 25);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
            isCorrectAnswer: correct, questionIndex: questionIndex),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(question,
                  style: GoogleFonts.firaCode(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(height: 5),
              Text(userAnswer,
                  style: GoogleFonts.firaCode(
                    color: correctColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  )),
              Text(correctAnswer,
                  style: GoogleFonts.firaCode(
                    color: const Color.fromARGB(255, 0, 255, 8),
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  )),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ],
    );
  }
}
