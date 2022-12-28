import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
    List<String> answers = hasQuestionSelected
        ? _questions[_questionSelected].cast()['answer']
        : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Questions'),
        ),
        body: hasQuestionSelected
            ? Column(
                children: [
                  Question(_questions[_questionSelected]['text'] as String),
                  ...answers.map((t) => Answer(t, _answer)).toList(),
                ],
              )
            : null,
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
