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
  int _indexQuestion = 0;
  List<Map<String, Object>> questions = [
    {
      "text": "Qual é a sua cor favorita?",
      "answers": ['Azul', 'Verde', 'Vermelho', 'Branca']
    },
    {
      "text": "Qual é a sua fruta favorita?",
      "answers": ['Morango', 'Maça', 'Laranja', 'Banana']
    },
    {
      "text": "Qual animal mais forte?",
      "answers": ['Leão', 'Galo', 'Gato', 'Elefantes']
    }
  ];

  bool get isNotFinal => _indexQuestion < questions.length;

  void _toAnswer() {
    setState(() {
      _indexQuestion += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> myAnswers =
        isNotFinal ? questions[_indexQuestion]['answers'] as List<String> : [];

    List<Widget> answersWidgets = myAnswers
        .map((ans) => Answers(answer: ans, onAnswer: _toAnswer))
        .toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas e Respostas'),
          centerTitle: true,
        ),
        body: isNotFinal
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Question(
                      question: questions[_indexQuestion]['text'].toString()),
                  ...answersWidgets
                ],
              )
            : const Center(
                child: Text('Parabéns'),
              ),
      ),
    );
  }
}
