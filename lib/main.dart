import 'package:flutter/material.dart';
import 'question.dart';
import './answer.dart';

main() => runApp(QuestionsApp());

class _QuestionsAppState extends State<QuestionsApp> {
  var _questionSelected = 0;

  void _answer() {
    setState(() {
      _questionSelected++;
    });
    print(_questionSelected);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      "What's your favorite color?",
      "Whats's your favorite animal?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Questions'),
        ),
        body: Column(
          children: [
            Question(perguntas[_questionSelected]),
            Answer('Answer 1'),
            Answer('Answer 2'),
            Answer('Answer 3'),
          ],
        ),
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
