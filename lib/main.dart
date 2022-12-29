import 'package:flutter/material.dart';
import 'package:projeto_perguntas/quiz.dart';
import 'quiz.dart';
import './result.dart';

main() => runApp(const QuestionsApp());

class _QuestionsAppState extends State<QuestionsApp> {
  var _questionSelected = 0;
  final _questions = const [
    {
      "text": "What's your favorite color?",
      "answer": [
        {'text': 'Black', 'grade': 10},
        {'text': 'Red', 'grade': 5},
        {'text': 'Green', 'grade': 3},
        {'text': 'White', 'grade': 1},
      ],
    },
    {
      "text": "What's your favorite animal?",
      "answer": [
        {'text': 'Bunny', 'grade': 10},
        {'text': 'Snake', 'grade': 5},
        {'text': 'Cat', 'grade': 3},
        {'text': 'Dog', 'grade': 1},
      ]
    },
    {
      "text": "What's you favorite teacher?",
      "answer": [
        {'text': 'Maria', 'grade': 10},
        {'text': 'John', 'grade': 5},
        {'text': 'Leo', 'grade': 3},
        {'text': 'Peter', 'grade': 1},
      ],
    }
  ];

  void _answer() {
    if (hasQuestionSelected) {
      setState(() {
        _questionSelected++;
      });
    }
  }

  bool get hasQuestionSelected {
    return _questionSelected < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Questions'),
        ),
        body: hasQuestionSelected
            ? Quiz(
                questions: _questions,
                questionSelected: _questionSelected,
                answer: _answer,
              )
            : Result(),
      ),
    );
  }
}

class QuestionsApp extends StatefulWidget {
  const QuestionsApp({super.key});

  @override
  _QuestionsAppState createState() {
    return _QuestionsAppState();
  }
}
