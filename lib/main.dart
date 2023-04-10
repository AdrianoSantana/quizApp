import 'package:flutter/material.dart';
import 'package:quiz_app/components/question.dart';

import 'components/answers.dart';

void main() {
  runApp(const PerguntasApp());
}

class PerguntasApp extends StatefulWidget {
  const PerguntasApp({super.key});

  @override
  State<PerguntasApp> createState() => _PerguntasAppState();
}

class _PerguntasAppState extends State<PerguntasApp> {
  final List<String> questions = [
    "Qual é a sua cor favorita?",
    "Qual é a sua fruta favorita?"
  ];

  int _indexQuestion = 0;

  void _toAnswer() {
    if (_indexQuestion < questions.length - 1) {
      setState(() {
        _indexQuestion += 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas e Respostas'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Question(question: questions[_indexQuestion]),
            Answers(answer: 'Resposta AA', onAnswer: _toAnswer),
            Answers(answer: 'Resposta BB', onAnswer: _toAnswer),
            Answers(answer: 'Resposta CC', onAnswer: _toAnswer),
          ],
        ),
      ),
    );
  }
}
