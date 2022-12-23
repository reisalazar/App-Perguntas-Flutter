import 'package:flutter/material.dart';

void main() {
  runApp(const QuestionsApp());
}

class QuestionsApp extends StatelessWidget {
  const QuestionsApp({super.key});

  answer() {
    print('Question answered!');
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
            Text(perguntas[0]),
            ElevatedButton(
              onPressed: answer(),
              child: const Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: answer(),
              child: const Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: answer(),
              child: const Text('Resposta 3'),
            ),
          ],
        ),
      ),
    );
  }
}
