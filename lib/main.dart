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
      "answer": ['Black', 'Red', 'Green', 'White'],
    },
    {
      "text": "What's your favorite animal?",
      "answer": ['Bunny', 'Snake', 'Cat', 'Dog']
    },
    {
      "text": "What's you favorite teacher?",
      "answer": ['Maria', 'John', 'Leo', 'Peter'],
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
