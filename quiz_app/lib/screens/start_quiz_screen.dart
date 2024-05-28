import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartQuizScreen extends StatelessWidget {
  const StartQuizScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        /* Opacity(
          opacity: 0.7,
          child: Image.asset(
            'assets/images/quiz-logo.png',
            width: 280,
          )
        ), */
        Image.asset(
          'assets/images/quiz-logo.png',
          color: const Color.fromARGB(206, 255, 255, 255),
          width: 280,
        ),
        const SizedBox(height: 65),
        Text('Learn Flutter the fun way!',
            textAlign: TextAlign.center,
            style: GoogleFonts.firaCode(
              color: const Color.fromARGB(255, 255, 255, 255),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )
            /* TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ), */
            ),
        const SizedBox(height: 20),
        OutlinedButton.icon(
          onPressed: startQuiz,
          icon: const Icon(
            Icons.play_arrow,
            color: Color.fromARGB(156, 31, 0, 92),
          ),
          label: Text('Start Quiz',
              style: GoogleFonts.firaCode(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 15,
                fontWeight: FontWeight.bold,
              )
              /* TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ), */
              ),
        ),
      ],
    );
  }
}
