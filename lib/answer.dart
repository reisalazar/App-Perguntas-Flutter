import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String texto;

  Answer(this.texto);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(texto),
      onPressed: null,
    );
  }
}
