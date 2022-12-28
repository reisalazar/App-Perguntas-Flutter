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

    List<String> answers = questions[_questionSelected].cast()['answer'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Questions'),
        ),
        body: Column(
          children: [
            Question(questions[_questionSelected]['text'] as String),
            ...answers.map((t) => Answer(t, _answer)).toList(),
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
