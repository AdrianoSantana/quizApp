import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final String answer;
  final void Function() onAnswer;
  const Answers({super.key, required this.answer, required this.onAnswer});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onAnswer,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purple,
      ),
      child: Text(answer),
    );
  }
}
