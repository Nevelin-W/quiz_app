import 'package:flutter/material.dart';
import 'package:quiz_app/screens/question_screen.dart';
import 'package:quiz_app/screens/start_quiz_screen.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/screens/end_quiz_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswers(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        //selectedAnswers = [];
        activeScreen = 'end-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartQuizScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswers,
      );
    }

    if (activeScreen == 'end-screen') {
      screenWidget =
          EndQuizScreen(chosenAnswers: selectedAnswers, onRestart: restartQuiz);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 1),
              colors: [
                Color.fromARGB(188, 31, 0, 92),
                Color.fromARGB(188, 91, 0, 96),
                Color.fromARGB(188, 135, 1, 97),
                Color.fromARGB(185, 172, 37, 93),
                Color(0xffca485c),
                Color.fromARGB(176, 187, 67, 51),
                Color.fromARGB(179, 211, 103, 49),
                Color.fromARGB(156, 31, 0, 92),
              ],
              tileMode: TileMode.mirror,
            ),
          ),
          child: Center(
            child: screenWidget,
          ),
        ),
      ),
    );
  }
}
