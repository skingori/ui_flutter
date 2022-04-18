import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  const Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 10),
        textAlign: TextAlign.center,
      ),
    );
  }
}
