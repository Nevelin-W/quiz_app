import 'package:flutter/material.dart';
import 'package:quiz_app/start_quiz.dart';

const start = 10.0;
const end = 50.0;

class MainContainer extends StatelessWidget {
  const MainContainer(this.colors, {super.key});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: const Alignment(0.8, 1),
          colors: colors,
          tileMode: TileMode.mirror,
        ),
      ),
      child: const Center(
        child: StartQuiz(),
      ),
    );
  }
}
