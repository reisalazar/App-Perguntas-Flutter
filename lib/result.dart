import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int pontuation;
  final void Function() whenResetQuiz;

  Result(this.pontuation, this.whenResetQuiz, {super.key});

  String get scoreFrase {
    if (pontuation < 8) {
      return 'Congrats';
    } else if (pontuation < 12) {
      return 'You are great!';
    } else if (pontuation < 16) {
      return 'Impressive';
    } else {
      return 'Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            scoreFrase,
            style: const TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          onPressed: whenResetQuiz,
          child: const Text(
            "Reset",
            style: TextStyle(
              fontSize: 18,
              color: Colors.blue,
            ),
          ),
        )
      ],
    );
  }
}
