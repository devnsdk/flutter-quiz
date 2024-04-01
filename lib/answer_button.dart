import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answerText;
  final void Function() onTap;
  const AnswerButton(this.answerText, this.onTap, {super.key});

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsetsDirectional.all(10),
          backgroundColor: const Color.fromARGB(195, 43, 6, 79),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          )),
      child: Text(answerText),
    );
  }
}
