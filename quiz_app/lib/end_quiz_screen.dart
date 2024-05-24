import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EndQuizScreen extends StatelessWidget {
  const EndQuizScreen({super.key});

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'dummy text',
              textAlign: TextAlign.center,
              style: GoogleFonts.firaCode(
                color: const Color.fromARGB(165, 31, 0, 92),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'list of answers',
              textAlign: TextAlign.center,
              style: GoogleFonts.firaCode(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () {},
              child: Text(
                'Restart Quiz',
                style: GoogleFonts.firaCode(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
