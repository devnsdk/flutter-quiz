import 'package:flutter/material.dart';
import 'package:quiz_app/pages/quiz.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(context) {
    return const Quiz();
  }
}
