import 'package:flutter/material.dart';

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
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        OutlinedButton.icon(
          onPressed: startQuiz,
          icon: const Icon(
            Icons.play_arrow,
            color: Color.fromARGB(156, 31, 0, 92),
          ),
          label: const Text(
            'Start Quiz',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
