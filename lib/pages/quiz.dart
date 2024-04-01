import 'package:flutter/material.dart';
import 'package:quiz_app/pages/question_screen.dart';
import 'package:quiz_app/pages/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = const QuestionScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 65, 17, 147),
          child: screenWidget,
        ),
      ),
    );
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }
}
