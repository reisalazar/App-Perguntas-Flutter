import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionSelected;
  final void Function() answer;

  Quiz({
    required this.questions,
    required this.questionSelected,
    required this.answer,
  });

  bool get hasQuestionSelected {
    return questionSelected < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> answers =
        hasQuestionSelected ? questions[questionSelected].cast()['answer'] : [];

    return Column(
      children: [
        Question(questions[questionSelected]['text'] as String),
        ...answers.map((t) => Answer(t, answer)).toList(),
      ],
    );
  }
}
