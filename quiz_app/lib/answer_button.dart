import 'package:flutter/material.dart';

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
      child: Text(
        answerText,
        style: const TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }
}
