import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RestartButton extends StatelessWidget {
  const RestartButton({super.key, required this.onRestart});

  final void Function() onRestart;

  @override
  Widget build(context) {
    return TextButton.icon(
      onPressed: onRestart,
      icon: const Icon(
        Icons.replay_sharp,
        color: Color.fromARGB(188, 31, 0, 92),
      ),
      label: Text(
        'Restart Quiz',
        style: GoogleFonts.firaCode(
          color: const Color.fromARGB(255, 255, 255, 255),
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
