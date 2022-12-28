import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

main() => runApp(const QuestionsApp());

class _QuestionsAppState extends State<QuestionsApp> {
  var _questionSelected = 0;

  void _answer() {
    setState(() {
      _questionSelected++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> questions = [
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

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Questions'),
        ),
        body: Column(
          children: [
            Question(questions[_questionSelected]['text'] as String),
            Answer('Answer 1', _answer),
            Answer('Answer 2', _answer),
            Answer('Answer 3', _answer),
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
