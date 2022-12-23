import 'package:flutter/material.dart';

main() => runApp(QuestionsApp());

class QuestionsAppState extends State<QuestionsApp> {
  var questionSelected = 0;

  void answer() {
    setState(() {
      questionSelected++;
    });
    print(questionSelected);
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
            Text(perguntas[questionSelected]),
            ElevatedButton(
              onPressed: answer,
              child: const Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Qustion 2 answered!');
              },
              child: const Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: () => print("Answer 3!"),
              child: const Text('Resposta 3'),
            ),
          ],
        ),
      ),
    );
  }
}

class QuestionsApp extends StatefulWidget {
  const QuestionsApp({super.key});

  @override
  QuestionsAppState createState() {
    return QuestionsAppState();
  }
}
