import 'package:flutter/material.dart';
import 'package:quiz_app/main_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: MainContainer(
          [
            Color.fromARGB(188, 31, 0, 92),
            Color.fromARGB(188, 91, 0, 96),
            Color.fromARGB(188, 135, 1, 97),
            Color.fromARGB(185, 172, 37, 93),
            Color(0xffca485c),
            Color.fromARGB(176, 187, 67, 51),
            Color.fromARGB(179, 211, 103, 49),
            Color.fromARGB(156, 31, 0, 92),
          ],
        ),
      ),
    ),
  );
}
