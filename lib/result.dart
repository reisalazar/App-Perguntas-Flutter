import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int pontuation;

  Result(this.pontuation, {super.key});

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
    return Center(
      child: Text(
        scoreFrase,
        style: const TextStyle(fontSize: 28),
      ),
    );
  }
}
