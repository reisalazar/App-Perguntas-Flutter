import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String texto;
  final void Function() onSelected;

  const Answer(this.texto, this.onSelected);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        onPressed: onSelected,
        child: Text(texto),
      ),
    );
  }
}
