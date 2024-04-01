import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final void Function() startQuiz;

  const StartScreen(this.startQuiz, {super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(125, 207, 226, 235),
          ),
          const SizedBox(height: 80),
          const Text(
            'Start Screen',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 50),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
